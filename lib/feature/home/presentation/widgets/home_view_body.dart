import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/active_trip_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/driver_drawer.dart';
import 'package:mashena_driver_app/feature/notification/presentation/cubits/notification_cubit/notification_cubit.dart';
import 'package:mashena_driver_app/feature/notification/presentation/cubits/notification_cubit/notification_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/fab_button.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/home_top_bar.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/map_placeholder.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/online_waiting_indicator.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/radius_selector_dialog.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_request_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_accepted_card.dart';

import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_summary_sheet.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/shared_ride/shared_ride_sheet_coordinator.dart';

class HomeViewBody extends StatefulWidget {
  final DriverProfileModel driver;

  const HomeViewBody({super.key, required this.driver});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      drawer: DriverAppDrawer(driver: widget.driver),
      body: MultiBlocListener(
        listeners: [
          // ── Listen for server-side trip cancellation ──────────────
          BlocListener<RideRequestCubit, RideRequestState>(
            listenWhen: (prev, curr) =>
                prev.tripCancelledBy == null && curr.tripCancelledBy != null,
            listener: (context, rideState) {
              // Clear map route
              context.read<MapCubit>().clearRoute();
              // Show the cancellation sheet
              _showTripCancelledSheet(
                context,
                cancelledBy: rideState.tripCancelledBy!,
              );
            },
          ),
          // ── Listen for trip completion summary ────────────────────
          BlocListener<RideRequestCubit, RideRequestState>(
            listenWhen: (prev, curr) =>
                prev.completedTripSummary == null &&
                curr.completedTripSummary != null,
            listener: (context, rideState) {
              context.read<DriverStatusCubit>().endTrip();
              context.read<MapCubit>().clearRoute();
              _showTripSummarySheet(
                context,
                summary: rideState.completedTripSummary!,
              );
            },
          ),
          // ── Listen for shared ride route drawing ───────────────────
          BlocListener<SharedRideCubit, SharedRideState>(
            listenWhen: (prev, curr) =>
                prev.ride != curr.ride || prev.status != curr.status,
            listener: (context, sharedRideState) {
              final ride = sharedRideState.ride;
              if (ride != null &&
                  sharedRideState.status != SharedRideStatus.idle &&
                  sharedRideState.status != SharedRideStatus.cancelled) {
                final points = ride.routeGeometry?.points != null
                    ? List<LatLng>.from(
                        ride.routeGeometry!.points.map(
                          (p) => LatLng(p.lat, p.lng),
                        ),
                      )
                    : null;

                context.read<MapCubit>().drawRoute(
                  pickupLat: ride.originLat,
                  pickupLng: ride.originLng,
                  destinationLat: ride.destLat,
                  destinationLng: ride.destLng,
                  predefinedPoints: points,
                );
              } else if (sharedRideState.status == SharedRideStatus.idle ||
                  sharedRideState.status == SharedRideStatus.cancelled) {
                context.read<MapCubit>().clearRoute();
              }
            },
          ),
        ],
        child: BlocConsumer<DriverStatusCubit, DriverStatusState>(
          // ── React to status transitions ──────────────────────────
          listener: (context, driverState) {
            // Draw route when trip is accepted
            if (driverState.status == DriverStatus.tripAccepted) {
              final rideRequest = context
                  .read<RideRequestCubit>()
                  .state
                  .rideRequestEntity;
              if (rideRequest != null) {
                // Convert stops to the format expected by drawRoute
                final stops = rideRequest.stops.isNotEmpty
                    ? rideRequest.stops
                          .map((s) => (lat: s.lat, lng: s.lng, order: s.order))
                          .toList()
                    : null;

                context.read<MapCubit>().drawRoute(
                  pickupLat: rideRequest.pickupLat,
                  pickupLng: rideRequest.pickupLng,
                  destinationLat: rideRequest.destLat,
                  destinationLng: rideRequest.destLng,
                  stops: stops,
                  predefinedPoints: rideRequest.routeGeometry?.points != null
                      ? List<LatLng>.from(
                          rideRequest.routeGeometry!.points.map(
                            (p) => LatLng(p.lat, p.lng),
                          ),
                        )
                      : null,
                );
              }
            }
            // Clear route when back to waiting or offline
            if (driverState.status == DriverStatus.onlineWaiting ||
                driverState.status == DriverStatus.offline) {
              context.read<MapCubit>().clearRoute();
            }
          },
          builder: (context, driverState) {
            return BlocBuilder<MapCubit, MapState>(
              builder: (context, mapState) {
                return Stack(
                  children: [
                    // ── Layer 0: Map ───────────────────────────────
                    _buildMapLayer(mapState),

                    // ── Layer 0.5: Location Picker Center Pin ─────
                    if (mapState.isPickingLocation)
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 36.r),
                          child: Icon(
                            Icons.location_on_rounded,
                            size: 48.r,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    _buildRightFabs(context, driverState),
                    SafeArea(
                      child: Column(
                        children: [
                          BlocBuilder<NotificationCubit, NotificationState>(
                            buildWhen: (prev, curr) =>
                                prev.unreadCount != curr.unreadCount,
                            builder: (context, notificationState) {
                              return HomeTopBar(
                                onOpenDrawer: () =>
                                    _scaffoldKey.currentState?.openDrawer(),
                                onNotificationTap: () => context.pushNamed(
                                  AppRoutes.notificationView,
                                ),
                                notificationCount:
                                    notificationState.unreadCount,
                              );
                            },
                          ),

                          SizedBox(height: AppSpacing.sm.h),

                          // if (driverState.isOnline) ...[
                          //   EarningsMiniCard(driver: widget.driver),
                          //   SizedBox(height: AppSpacing.sm.h),
                          // ],
                          const Spacer(),

                          _buildBottomOverlay(context, driverState),

                          SizedBox(height: AppSpacing.md.h),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ), // ← BlocConsumer
      ), // ← MultiBlocListener
    );
  }

  // ─── Trip Cancelled Sheet ──────────────────────────────────────────────────

  void _showTripCancelledSheet(
    BuildContext context, {
    required String cancelledBy,
  }) {
    final isAdmin = cancelledBy == 'admin';
    showModalBottomSheet<void>(
      context: context,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _TripCancelledSheet(isAdmin: isAdmin),
    ).whenComplete(() {
      // Only call clearTripCancellation if widget is still mounted
      if (context.mounted) {
        context.read<RideRequestCubit>().clearTripCancellation();
      }
    });
  }

  // ─── Trip Summary Sheet ────────────────────────────────────────────────────

  void _showTripSummarySheet(
    BuildContext context, {
    required CompleteTripEntity summary,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (_) => TripSummarySheet(
        summary: summary,
        onDismiss: () => Navigator.of(context).pop(),
      ),
    ).whenComplete(() {
      if (context.mounted) {
        context.read<RideRequestCubit>().clearCompletedTripSummary();
      }
    });
  }

  // ─── Map Layer ─────────────────────────────────────────────────────────────
  Widget _buildMapLayer(MapState mapState) {
    if (mapState.status == MapLoadStatus.loading) {
      return MapPlaceholder(message: S.of(context).homeGettingLocation);
    }
    if (mapState.status == MapLoadStatus.permissionDenied) {
      return MapPlaceholder(
        message: S.of(context).homeEnableLocationPermission,
      );
    }
    if (mapState.status == MapLoadStatus.error) {
      return MapPlaceholder(
        message: mapState.errorMessage ?? S.of(context).commonError,
      );
    }
    final position = mapState.currentPosition;
    if (position == null || mapState.controller == null) {
      return MapPlaceholder(message: S.of(context).homeWaitingForLocation);
    }

    return FlutterMap(
      mapController: mapState.controller!,
      options: MapOptions(
        initialCenter: position,
        initialZoom: 16,
        onPositionChanged: (camera, hasGesture) {
          if (mapState.isPickingLocation) {
            context.read<MapCubit>().updatePickedCenterLocation(camera.center);
          }
        },
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
          userAgentPackageName: 'com.example.mashena_driver_app',
          tileBuilder: (context, tileWidget, tile) {
            final isDarkMode = Theme.of(context).brightness == Brightness.dark;
            if (!isDarkMode) return tileWidget;
            return ColorFiltered(
              colorFilter: const ColorFilter.matrix([
                -0.2126,
                -0.7152,
                -0.0722,
                0,
                255,
                -0.2126,
                -0.7152,
                -0.0722,
                0,
                255,
                -0.2126,
                -0.7152,
                -0.0722,
                0,
                255,
                0,
                0,
                0,
                1,
                0,
              ]),
              child: tileWidget,
            );
          },
        ),
        CircleLayer(circles: mapState.circles),
        PolylineLayer(polylines: mapState.polylines),
        MarkerLayer(
          markers: mapState.markers
              .where(
                (m) =>
                    !m.point.latitude.isNaN &&
                    !m.point.longitude.isNaN &&
                    !m.point.latitude.isInfinite &&
                    !m.point.longitude.isInfinite &&
                    !m.width.isNaN &&
                    !m.height.isNaN &&
                    !m.width.isInfinite &&
                    !m.height.isInfinite,
              )
              .toList(),
        ),
      ],
    );
  }

  // ─── Bottom Overlay ────────────────────────────────────────────────────────
  Widget _buildBottomOverlay(
    BuildContext context,
    DriverStatusState driverState,
  ) {
    final mapState = context.read<MapCubit>().state;
    if (mapState.isPickingLocation &&
        driverState.status != DriverStatus.onSharedRide) {
      return _buildMapPickerConfirmOverlay(context, mapState);
    }

    switch (driverState.status) {
      case DriverStatus.offline:
      case DriverStatus.goingOnline:
      case DriverStatus.goingOffline:
      case DriverStatus.onlineWaiting:
        return const WaitingForRideCard();

      case DriverStatus.newRequest:
        return const RideRequestCard(); // ✅ no props — self-contained

      case DriverStatus.tripAccepted:
        return const TripAcceptedCard(); // ✅ reads from RideRequestCubit

      case DriverStatus.onTrip:
        return BlocBuilder<RideRequestCubit, RideRequestState>(
          builder: (context, rideState) {
            final rideRequest = rideState.rideRequestEntity;
            return ActiveTripCard(
              rideRequest: rideRequest, // 👈 full entity
              elapsed: driverState.activeTripDuration ?? Duration.zero,
              onEndTrip: () {
                context.read<RideRequestCubit>().completeTrip();
              },
            );
          },
        );

      case DriverStatus.onSharedRide:
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Visibility(
              visible: !mapState.isPickingLocation,
              maintainState: true,
              child: SharedRideSheetCoordinator(
                onClose: () =>
                    context.read<DriverStatusCubit>().exitSharedRide(),
              ),
            ),
            if (mapState.isPickingLocation)
              _buildMapPickerConfirmOverlay(context, mapState),
          ],
        );

      default:
        return const SizedBox.shrink();
    }
  }

  // ─── Map Picker Confirm Overlay ───────────────────────────────────────────
  Widget _buildMapPickerConfirmOverlay(
    BuildContext context,
    MapState mapState,
  ) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final center = mapState.pickedCenterLocation ?? mapState.currentPosition;
    final isOrigin = mapState.pickerTarget == MapPickerTarget.origin;
    final title = isOrigin
        ? S.of(context).mapPickOriginLocation
        : S.of(context).mapPickDestinationLocation;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                isOrigin ? Icons.location_on_rounded : Icons.flag_rounded,
                color: AppColors.primaryColor,
                size: 24.r,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.w600_16.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.xs.h),
          if (center != null)
            Text(
              '${center.latitude.toStringAsFixed(5)}, ${center.longitude.toStringAsFixed(5)}',
              style: AppTextStyles.w400_14.copyWith(
                color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
              ),
            ),
          SizedBox(height: AppSpacing.md.h),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () =>
                      context.read<MapCubit>().cancelLocationPicking(),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                  ),
                  child: Text(
                    S.of(context).commonCancel,
                    style: AppTextStyles.w600_14,
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.sm.w),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<MapCubit>().confirmLocationSelection(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                  ),
                  child: Text(
                    S.of(context).mapConfirmLocation,
                    style: AppTextStyles.w600_14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ─── Right FABs ────────────────────────────────────────────────────────────
  Widget _buildRightFabs(BuildContext context, DriverStatusState driverState) {
    return Positioned(
      right: AppSpacing.md.w,
      bottom: 380.h,
      child: SafeArea(
        child: Column(
          children: [
            FabButton(
              icon: Icons.my_location_rounded,
              onTap: () => context.read<MapCubit>().recenterOnDriver(),
              tooltip: S.of(context).homeMyLocation,
            ),
            SizedBox(height: AppSpacing.sm.h),
            FabButton(
              icon: Icons.radar_rounded,
              onTap: () =>
                  showRadiusSelectorDialog(context, driverState.radiusKm),
              tooltip:
                  '${S.of(context).radiusTitle} (${S.of(context).radiusKm(driverState.radiusKm)})',
            ),
            // SizedBox(height: AppSpacing.sm.h),
            // if (driverState.isOnline)
            //   SosButton(
            //     onActivate: () =>
            //         context.read<DriverStatusCubit>().triggerSos(),
            //   ),
            if (driverState.isOnline) ...[
              SizedBox(height: AppSpacing.sm.h),
              Builder(
                builder: (fabContext) {
                  return FabButton(
                    icon: Icons.group_add_rounded,
                    onTap: () => _showSharedRideMenu(fabContext, driverState),
                    tooltip: S.of(context).homeCreateSharedRide,
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showSharedRideMenu(
    BuildContext fabContext,
    DriverStatusState driverState,
  ) {
    final isDark = Theme.of(fabContext).brightness == Brightness.dark;
    final renderBox = fabContext.findRenderObject() as RenderBox?;
    final overlay =
        Overlay.of(fabContext).context.findRenderObject() as RenderBox?;
    if (renderBox == null || overlay == null) return;

    final buttonOffset =
        renderBox.localToGlobal(Offset.zero, ancestor: overlay);
    final buttonSize = renderBox.size;

    // Anchor menu slightly to the left of the FAB button
    final position = RelativeRect.fromLTRB(
      buttonOffset.dx - 150.w,
      buttonOffset.dy - 10.h,
      overlay.size.width - buttonOffset.dx,
      overlay.size.height - (buttonOffset.dy + buttonSize.height),
    );

    final sharedRideCubit = fabContext.read<SharedRideCubit>();
    final driverStatusCubit = fabContext.read<DriverStatusCubit>();
    final mapCubit = fabContext.read<MapCubit>();

    showMenu<String>(
      context: fabContext,
      position: position,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        side: BorderSide(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor,
        ),
      ),
      color: isDark ? AppColors.cardDark : AppColors.cardLight,
      items: [
        PopupMenuItem<String>(
          value: 'create',
          height: 44.h,
          child: Row(
            children: [
              Icon(
                Icons.add_circle_outline_rounded,
                color: AppColors.primaryColor,
                size: 20.r,
              ),
              SizedBox(width: 10.w),
              Text(
                S.of(fabContext).sharedCreateOption,
                style: AppTextStyles.w600_14.copyWith(
                  color:
                      isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(height: 1),
        PopupMenuItem<String>(
          value: 'join',
          height: 44.h,
          child: Row(
            children: [
              Icon(
                Icons.groups_rounded,
                color:
                    isDark ? AppColors.primaryLight : AppColors.primaryColor,
                size: 20.r,
              ),
              SizedBox(width: 10.w),
              Text(
                S.of(fabContext).sharedJoinOption,
                style: AppTextStyles.w600_14.copyWith(
                  color:
                      isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                ),
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'create') {
        sharedRideCubit.reset();
        driverStatusCubit.startSharedRide();
      } else if (value == 'join') {
        _onJoinSharedRide(
          driverState: driverState,
          sharedRideCubit: sharedRideCubit,
          driverStatusCubit: driverStatusCubit,
          mapCubit: mapCubit,
        );
      }
    });
  }

  void _onJoinSharedRide({
    required DriverStatusState driverState,
    required SharedRideCubit sharedRideCubit,
    required DriverStatusCubit driverStatusCubit,
    required MapCubit mapCubit,
  }) {
    final mapState = mapCubit.state;
    final currentPos = mapState.currentPosition;
    final radius = driverState.radiusKm.toDouble();

    // 1. Enter shared ride mode
    driverStatusCubit.startSharedRide();

    // 2. Fetch available pools directly with current location & radius without showing to user
    if (currentPos != null) {
      sharedRideCubit.fetchAvailablePools(
        lat: currentPos.latitude,
        lng: currentPos.longitude,
        radiusKm: radius,
      );
    } else {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((pos) {
        sharedRideCubit.fetchAvailablePools(
          lat: pos.latitude,
          lng: pos.longitude,
          radiusKm: radius,
        );
      }).catchError((_) {});
    }
  }
}

// ─── Trip Cancelled Sheet ──────────────────────────────────────────────────────

class _TripCancelledSheet extends StatelessWidget {
  final bool isAdmin;

  const _TripCancelledSheet({required this.isAdmin});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final color = isAdmin ? AppColors.danger : AppColors.warning;
    final icon = isAdmin
        ? Icons.admin_panel_settings_rounded
        : Icons.person_off_rounded;
    final title = isAdmin
        ? S.of(context).tripCancelledByAdmin
        : S.of(context).tripCancelledByRider;
    final subtitle = isAdmin
        ? S.of(context).tripCancelledByAdminSubtitle
        : S.of(context).tripCancelledByRiderSubtitle;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      padding: EdgeInsets.all(AppSpacing.lg.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Handle ────────────────────────────────────────
          Container(
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.dividerDark
                  : AppColors.textGrey.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(AppRadius.full.r),
            ),
          ),
          SizedBox(height: AppSpacing.md.h),

          // ── Icon ──────────────────────────────────────────
          Container(
            width: 64.r,
            height: 64.r,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 32.r),
          ),
          SizedBox(height: AppSpacing.md.h),

          // ── Title ─────────────────────────────────────────
          Text(
            title,
            style: AppTextStyles.w700_16.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.xs.h),

          // ── Subtitle ──────────────────────────────────────
          Text(
            subtitle,
            style: AppTextStyles.w400_12.copyWith(
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.lg.h),

          // ── Dismiss button ────────────────────────────────
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.full.r),
                ),
              ),
              child: Text(
                S.of(context).commonGotIt,
                style: AppTextStyles.w600_14.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: AppSpacing.sm.h),
        ],
      ),
    );
  }
}
