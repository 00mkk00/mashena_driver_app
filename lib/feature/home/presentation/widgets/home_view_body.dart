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
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/enums/driver_status_enum.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/active_trip_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/driver_drawer.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/earning_mini_cart.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/home_top_bar.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/map_placeholder.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/online_waiting_indicator.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/radius_selector_sheet.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_request_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/sos_button.dart';

class HomeViewBody extends StatefulWidget {
  final DriverProfileModel driver;
  final RideRequestModel? rideRequest;

  const HomeViewBody({super.key, required this.driver, this.rideRequest});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final int _countdown = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DriverAppDrawer(driver: widget.driver),
      body: BlocBuilder<DriverStatusCubit, DriverStatusState>(
        builder: (context, driverState) {
          return BlocBuilder<MapCubit, MapState>(
            builder: (context, mapState) {
              return Stack(
                children: [
                  // ── Layer 0: Full-screen Map ───────────────────────────
                  _buildMapLayer(mapState),

                  // ── Layer 1: Safe Area Overlay ─────────────────────────
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

                        if (driverState.isOnline) ...[
                          EarningsMiniCard(driver: widget.driver),
                          SizedBox(height: AppSpacing.sm.h),
                        ],

                        const Spacer(),

                        _buildBottomOverlay(context, driverState),

                        SizedBox(height: AppSpacing.md.h),
                      ],
                    ),
                  ),

                  // ── Layer 2: Right FABs ────────────────────────────────
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
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.mashena_driver_app',
        ),
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
        return ShimmerCard(height: 80.h);

      case DriverStatus.onlineWaiting:
        return const WaitingForRideCard();

      case DriverStatus.newRequest:
        if (widget.rideRequest == null) return const SizedBox.shrink();
        return RideRequestCard(
          request: widget.rideRequest!,
          countdownSeconds: _countdown,
          isExpanded: false,
          onToggleExpand: () {},
          onAccept: () => context.read<DriverStatusCubit>().acceptRide(),
          onReject: () => context.read<DriverStatusCubit>().rejectRide(),
        );

      case DriverStatus.tripAccepted:
        return _TripAcceptedCard(request: widget.rideRequest);

      case DriverStatus.onTrip:
        return ActiveTripCard(
          trip: RideRequestModelLite(
            passengerName: widget.rideRequest?.passengerName ?? 'Passenger',
            destination:
                widget.rideRequest?.destinationAddress ?? 'Destination',
            fare: widget.rideRequest?.estimatedFare ?? 0,
          ),
          elapsed: driverState.activeTripDuration ?? Duration.zero,
          onEndTrip: () => context.read<DriverStatusCubit>().endTrip(),
        );

      default:
        return const SizedBox.shrink();
    }
  }

  // ─── Right FABs ────────────────────────────────────────────────────────────
  Widget _buildRightFabs(BuildContext context, DriverStatusState driverState) {
    return Positioned(
      right: AppSpacing.md.w,
      bottom: 180.h,
      child: SafeArea(
        child: Column(
          children: [
            _FabButton(
              icon: Icons.my_location_rounded,
              onTap: () => context.read<MapCubit>().recenterOnDriver(),
              tooltip: 'My Location',
            ),
            SizedBox(height: AppSpacing.sm.h),
            if (driverState.isOnline)
              SosButton(
                onActivate: () =>
                    context.read<DriverStatusCubit>().triggerSos(),
              ),
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
              // ── Power icon ───────────────────────────────────────
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

              // ── Labels ───────────────────────────────────────────
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

              // ── Radius chip ──────────────────────────────────────
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

// ─── Trip Accepted Card ───────────────────────────────────────────────────────
class _TripAcceptedCard extends StatelessWidget {
  final RideRequestModel? request;
  const _TripAcceptedCard({this.request});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.25)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // ── Badge ─────────────────────────────────────────
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
              Text(
                'EGP ${request?.estimatedFare.toStringAsFixed(0) ?? "--"}',
                style: AppTextStyles.w700_12.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),

          SizedBox(height: AppSpacing.sm.h),

          // ── Pickup row ──────────────────────────────────────
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 16.r,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Text(
                  request?.pickupAddress ?? 'Pickup address',
                  style: AppTextStyles.w400_14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          SizedBox(height: AppSpacing.sm.h),

          // ── Start trip button ───────────────────────────────
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton.icon(
              onPressed: () => context.read<DriverStatusCubit>().startTrip(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
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
