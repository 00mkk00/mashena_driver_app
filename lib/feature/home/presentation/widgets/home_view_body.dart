import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
import 'package:mashena_driver_app/feature/home/data/params/go_online_params.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/active_trip_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/driver_drawer.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/home_top_bar.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/map_placeholder.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/online_waiting_indicator.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/radius_selector_sheet.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_request_card.dart';

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
      drawer: DriverAppDrawer(driver: widget.driver),
      body: BlocConsumer<DriverStatusCubit, DriverStatusState>(
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

                  // ── Layer 1: Overlay ───────────────────────────
                  SafeArea(
                    child: Column(
                      children: [
                        HomeTopBar(
                          statusState: driverState,
                          onToggleStatus: () {
                            final position = context
                                .read<MapCubit>()
                                .state
                                .currentPosition;
                            if (position == null) return;
                            context
                                .read<DriverStatusCubit>()
                                .toggleOnlineStatus(
                                  GoOnlineParams(
                                    lat: position.latitude,
                                    lng: position.longitude,
                                  ),
                                );
                          },
                          onOpenDrawer: () =>
                              _scaffoldKey.currentState?.openDrawer(),
                          onNotificationTap: () {},
                          notificationCount: 2,
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

                  // ── Layer 2: Right FABs ────────────────────────
                  _buildRightFabs(context, driverState),
                ],
              );
            },
          );
        },
      ),
    );
  }

  // ─── Map Layer ─────────────────────────────────────────────────────────────
  Widget _buildMapLayer(MapState mapState) {
    if (mapState.status == MapLoadStatus.loading) {
      return const MapPlaceholder(message: 'Getting your location...');
    }
    if (mapState.status == MapLoadStatus.permissionDenied) {
      return const MapPlaceholder(message: 'Enable location permission');
    }
    if (mapState.status == MapLoadStatus.error) {
      return MapPlaceholder(
        message: mapState.errorMessage ?? 'Something went wrong',
      );
    }
    final position = mapState.currentPosition;
    if (position == null || mapState.controller == null) {
      return const MapPlaceholder(message: 'Waiting for location...');
    }

    return FlutterMap(
      mapController: mapState.controller!,
      options: MapOptions(initialCenter: position, initialZoom: 16),
      children: [
        TileLayer(
          urlTemplate: 'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
          userAgentPackageName: 'com.example.mashena_driver_app',
        ),
        CircleLayer(circles: mapState.circles),
        PolylineLayer(polylines: mapState.polylines),
        MarkerLayer(markers: mapState.markers),
      ],
    );
  }

  // ─── Bottom Overlay ────────────────────────────────────────────────────────
  Widget _buildBottomOverlay(
    BuildContext context,
    DriverStatusState driverState,
  ) {
    switch (driverState.status) {
      case DriverStatus.offline:
        return const _OfflineCard();

      case DriverStatus.goingOnline:
      case DriverStatus.goingOffline:
        return ShimmerCard(height: 80.h);

      case DriverStatus.onlineWaiting:
        return const WaitingForRideCard();

      case DriverStatus.newRequest:
        return const RideRequestCard(); // ✅ no props — self-contained

      case DriverStatus.tripAccepted:
        return const _TripAcceptedCard(); // ✅ reads from RideRequestCubit

      case DriverStatus.onTrip:
        return BlocBuilder<RideRequestCubit, RideRequestState>(
          builder: (context, rideState) {
            final rideRequest = rideState.rideRequestEntity;
            return ActiveTripCard(
              rideRequest: rideRequest, // 👈 full entity
              elapsed: driverState.activeTripDuration ?? Duration.zero,
              onEndTrip: () {
                context.read<DriverStatusCubit>().endTrip();
                context.read<MapCubit>().clearRoute();
              },
            );
          },
        );

      default:
        return const SizedBox.shrink();
    }
  }

  // ─── Right FABs ────────────────────────────────────────────────────────────
  Widget _buildRightFabs(BuildContext context, DriverStatusState driverState) {
    return Positioned(
      right: AppSpacing.md.w,
      bottom: 350.h,
      child: SafeArea(
        child: Column(
          children: [
            _FabButton(
              icon: Icons.my_location_rounded,
              onTap: () => context.read<MapCubit>().recenterOnDriver(),
              tooltip: 'My Location',
            ),
            // SizedBox(height: AppSpacing.sm.h),
            // if (driverState.isOnline)
            //   SosButton(
            //     onActivate: () =>
            //         context.read<DriverStatusCubit>().triggerSos(),
            //   ),
          ],
        ),
      ),
    );
  }
}

// ─── Offline Card ──────────────────────────────────────────────────────────────
class _OfflineCard extends StatelessWidget {
  const _OfflineCard();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverStatusCubit, DriverStatusState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
          padding: EdgeInsets.all(AppSpacing.md.r),
          decoration: BoxDecoration(
            color: AppColors.cardLight,
            borderRadius: BorderRadius.circular(AppRadius.lg.r),
            boxShadow: AppShadows.card,
          ),
          child: Row(
            children: [
              Container(
                width: 44.r,
                height: 44.r,
                decoration: BoxDecoration(
                  color: AppColors.offlineSurface,
                  borderRadius: BorderRadius.circular(AppRadius.sm.r),
                ),
                child: Icon(
                  Icons.power_settings_new_rounded,
                  color: AppColors.offline,
                  size: 24.r,
                ),
              ),
              SizedBox(width: AppSpacing.md.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You're Offline",
                      style: AppTextStyles.w600_14.copyWith(
                        color: AppColors.darkScaffold,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      'Go online to start accepting rides',
                      style: AppTextStyles.w400_12.copyWith(
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => showRadiusSelectorSheet(context, state.radiusKm),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm.w,
                    vertical: AppSpacing.xs.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primarySurface,
                    borderRadius: BorderRadius.circular(AppRadius.full.r),
                    border: Border.all(color: AppColors.borderColor),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.radar_rounded,
                        size: 14.r,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '${state.radiusKm} km',
                        style: AppTextStyles.w600_12.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Icon(
                        Icons.expand_more_rounded,
                        size: 14.r,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TripAcceptedCard extends StatelessWidget {
  const _TripAcceptedCard();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RideRequestCubit, RideRequestState>(
      builder: (context, rideState) {
        final trip = rideState.rideRequestEntity;

        return Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
          padding: EdgeInsets.all(AppSpacing.md.r),
          decoration: BoxDecoration(
            color: AppColors.cardLight,
            borderRadius: BorderRadius.circular(AppRadius.lg.r),
            boxShadow: AppShadows.card,
            border: Border.all(
              color: AppColors.primaryColor.withValues(alpha: 0.25),
            ),
          ),
          child: Column(
            children: [
              // ── Header ──────────────────────────────────────────
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm.w,
                      vertical: AppSpacing.xs.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primarySurface,
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                    child: Text(
                      'Trip Accepted ✓',
                      style: AppTextStyles.w700_12.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (trip != null)
                    Text(
                      'ID #${trip.id}',
                      style: AppTextStyles.w600_12.copyWith(
                        color: AppColors.cardDark,
                      ),
                    ),
                ],
              ),

              SizedBox(height: AppSpacing.sm.h),
              Divider(color: AppColors.divider, height: 1),
              SizedBox(height: AppSpacing.sm.h),

              // ── Route ───────────────────────────────────────────
              if (trip != null) ...[
                _RouteRow(trip: trip),
                if (trip.stops.isNotEmpty) ...[
                  SizedBox(height: AppSpacing.sm.h),
                  _StopsRow(stops: trip.stops),
                ],
                SizedBox(height: AppSpacing.sm.h),
              ] else ...[
                ShimmerCard(height: 50.h),
                SizedBox(height: AppSpacing.sm.h),
              ],

              // ── Start trip button ────────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton.icon(
                  onPressed: trip == null
                      ? null
                      : () => context.read<DriverStatusCubit>().startTrip(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    disabledBackgroundColor: AppColors.primaryColor.withValues(
                      alpha: 0.5,
                    ),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                    ),
                  ),
                  icon: Icon(Icons.navigation_rounded, size: 18.r),
                  label: Text(
                    'Start Trip',
                    style: AppTextStyles.w700_14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ─── Route Row ────────────────────────────────────────────────────────────────
class _RouteRow extends StatelessWidget {
  final RideRequestEntity trip;
  const _RouteRow({required this.trip});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Route line ───────────────────────────────────────
        SizedBox(
          width: 20.w,
          child: Column(
            children: [
              Container(
                width: 10.r,
                height: 10.r,
                decoration: const BoxDecoration(
                  color: AppColors.online,
                  shape: BoxShape.circle,
                ),
              ),
              Container(width: 2.w, height: 28.h, color: AppColors.divider),
              Container(
                width: 10.r,
                height: 10.r,
                decoration: BoxDecoration(
                  color: AppColors.danger,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: AppSpacing.sm.w),

        // ── Addresses from API ────────────────────────────────
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AddressItem(
                label: 'Pickup',
                address: trip.pickupAddress, // ✅ real address from API
              ),
              SizedBox(height: AppSpacing.sm.h),
              _AddressItem(
                label: 'Drop-off',
                address: trip.destAddress, // ✅ real address from API
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ─── Address Item — replaces _CoordItem ──────────────────────────────────────
class _AddressItem extends StatelessWidget {
  final String label;
  final String address;
  const _AddressItem({required this.label, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.w400_12.copyWith(
            color: AppColors.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          address,
          style: AppTextStyles.w500_12.copyWith(color: AppColors.onSurface),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// ─── Stops Row ────────────────────────────────────────────────────────────────
class _StopsRow extends StatelessWidget {
  final List<RideRequestStopEntity> stops;
  const _StopsRow({required this.stops});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.stop_circle_outlined,
              size: 14.r,
              color: AppColors.warning,
            ),
            SizedBox(width: AppSpacing.xs.w),
            Text(
              '${stops.length} stop${stops.length > 1 ? 's' : ''}',
              style: AppTextStyles.w600_12.copyWith(color: AppColors.warning),
            ),
          ],
        ),
        SizedBox(height: AppSpacing.xs.h),
        ...stops.map(
          (stop) => Padding(
            padding: EdgeInsets.only(
              left: AppSpacing.sm.w,
              bottom: AppSpacing.xs.h,
            ),
            child: Row(
              children: [
                Container(
                  width: 6.r,
                  height: 6.r,
                  decoration: BoxDecoration(
                    color: AppColors.warning,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: AppSpacing.xs.w),
                Expanded(
                  child: Text(
                    stop.address, // ✅ real address from API
                    style: AppTextStyles.w400_12.copyWith(
                      color: AppColors.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ─── FAB Button ───────────────────────────────────────────────────────────────
class _FabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String tooltip;

  const _FabButton({
    required this.icon,
    required this.onTap,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 44.r,
          height: 44.r,
          decoration: BoxDecoration(
            color: AppColors.cardLight,
            shape: BoxShape.circle,
            boxShadow: AppShadows.card,
          ),
          child: Icon(icon, size: 20.r, color: AppColors.onSurface),
        ),
      ),
    );
  }
}
