import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
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
import 'package:mashena_driver_app/feature/home/presentation/widgets/fab_button.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/home_top_bar.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/map_placeholder.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/online_waiting_indicator.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/radius_selector_dialog.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_request_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/route_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/stops_section.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_accepted_card.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_meta_row.dart';

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
                predefinedPoints: rideRequest.routeGeometry?.points
                    .map((p) => LatLng(p.lat, p.lng))
                    .toList(),
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
        return const TripAcceptedCard(); // ✅ reads from RideRequestCubit

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
            FabButton(
              icon: Icons.my_location_rounded,
              onTap: () => context.read<MapCubit>().recenterOnDriver(),
              tooltip: 'My Location',
            ),
            SizedBox(height: AppSpacing.sm.h),
            FabButton(
              icon: Icons.radar_rounded,
              onTap: () =>
                  showRadiusSelectorDialog(context, driverState.radiusKm),
              tooltip: 'Ride Radius (${driverState.radiusKm} km)',
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
            ],
          ),
        );
      },
    );
  }
}
