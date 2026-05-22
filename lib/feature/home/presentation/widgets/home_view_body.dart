import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
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
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_request_cart.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/sos_button.dart';

/// The body of the home screen. Composed as Stack with map + overlays.
/// All map logic (GoogleMap widget) is marked with TODO for wiring up
/// google_maps_flutter once API keys are configured.
class HomeViewBody extends StatefulWidget {
  final DriverProfileModel driver;
  final RideRequestModel? rideRequest;

  const HomeViewBody({super.key, required this.driver, this.rideRequest});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Demo countdown — in production, wire to RideRequestCubit timer stream
  final int _countdown = 28;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      drawer: DriverAppDrawer(driver: widget.driver),
      body: BlocBuilder<DriverStatusCubit, DriverStatusState>(
        builder: (context, driverState) {
          return BlocBuilder<MapCubit, MapState>(
            builder: (context, mapState) {
              return Stack(
                children: [
                  // ── Layer 0: Full-screen Map ─────────────────────────────
                  _buildMapLayer(mapState),

                  // ── Layer 1: Safe Area Overlay Content ───────────────────
                  SafeArea(
                    child: Column(
                      children: [
                        // Internet status banner (conditionally shown)
                        // TODO: Wire to connectivity_plus stream
                        // const NoInternetBanner(),

                        // Top bar
                        HomeTopBar(
                          statusState: driverState,
                          onToggleStatus: () => context
                              .read<DriverStatusCubit>()
                              .toggleOnlineStatus(),
                          onOpenDrawer: () =>
                              _scaffoldKey.currentState?.openDrawer(),
                          onNotificationTap: () {
                            // TODO: Navigate to notifications
                          },
                          notificationCount: 2,
                        ),

                        const SizedBox(height: AppSpacing.sm),

                        // Earnings mini card (online only)
                        if (driverState.isOnline) ...[
                          EarningsMiniCard(driver: widget.driver),
                          const SizedBox(height: AppSpacing.sm),
                        ],

                        const Spacer(),

                        // ── Bottom overlay based on driver state ──────────
                        _buildBottomOverlay(context, driverState, screenHeight),

                        const SizedBox(height: AppSpacing.md),
                      ],
                    ),
                  ),

                  // ── Layer 2: Right-side floating action buttons ───────────
                  _buildRightFabs(context, mapState, driverState),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildMapLayer(MapState mapState) {
    // ── Loading / permission states ──────────────────────────────────────────
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

    // ── Guard: wait until coordinates are available ──────────────────────────
    final position = mapState.currentPosition; // nullable LatLng getter
    if (position == null || mapState.controller == null) {
      return const MapPlaceholder(message: 'Waiting for location...');
    }

    // ── Fully loaded map ─────────────────────────────────────────────────────
    return FlutterMap(
      mapController: mapState.controller!,
      options: MapOptions(initialCenter: position, initialZoom: 16),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName:
              'com.example.mashena_driver_app', // ← set your package name
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
    double screenHeight,
  ) {
    switch (driverState.status) {
      case DriverStatus.offline:
        return _OfflineCard();

      case DriverStatus.goingOnline:
        return const ShimmerCard(height: 80);

      case DriverStatus.onlineWaiting:
        return const WaitingForRideCard();

      case DriverStatus.newRequest:
        if (widget.rideRequest == null) return const SizedBox.shrink();
        return RideRequestCard(
          request: widget.rideRequest!,
          countdownSeconds: _countdown,
          isExpanded: false,
          onToggleExpand: () {},
          onAccept: () {
            context.read<DriverStatusCubit>().acceptRide();
          },
          onReject: () {
            context.read<DriverStatusCubit>().rejectRide();
          },
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

  // ─── Right Side FABs ────────────────────────────────────────────────────────
  Widget _buildRightFabs(
    BuildContext context,
    MapState mapState,
    DriverStatusState driverState,
  ) {
    return Positioned(
      right: AppSpacing.md,
      bottom: 180,
      child: SafeArea(
        child: Column(
          children: [
            // Current location button
            _FabButton(
              icon: Icons.my_location_rounded,
              onTap: () => context.read<MapCubit>().recenterOnDriver(),
              tooltip: 'My Location',
            ),
            const SizedBox(height: AppSpacing.sm),

            // Map style toggle
            // Map style toggle — was calling initializeMap() by mistake
            // _FabButton(
            //   icon: mapState.isDarkMode
            //       ? Icons.light_mode_outlined
            //       : Icons.dark_mode_outlined,
            //   onTap: () => context.read<MapCubit>().toggleDarkMode(), // ← fixed
            //   tooltip: 'Toggle Map Style',
            // ),
            // const SizedBox(height: AppSpacing.md),

            // SOS — only visible when online
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

// ─── Offline Card ─────────────────────────────────────────────────────────────
class _OfflineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: AppShadows.card,
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: const Icon(
              Icons.power_settings_new_rounded,
              color: AppColors.offline,
              size: 24,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You're Offline", style: AppTextStyles.w500_14),
                SizedBox(height: 2),
                Text(
                  'Go online to start accepting rides',
                  style: AppTextStyles.w500_14,
                ),
              ],
            ),
          ),
        ],
      ),
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
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: AppShadows.floating,
        border: Border.all(color: AppColors.primaryColor.withOpacity(0.25)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(AppRadius.full),
                ),
                child: const Text(
                  'Trip Accepted ✓',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
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
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
                size: 16,
                color: AppColors.primaryColor,
              ),
              const SizedBox(width: 4),
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
          const SizedBox(height: AppSpacing.sm),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => context.read<DriverStatusCubit>().startTrip(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              icon: const Icon(Icons.navigation_rounded, size: 18),
              label: const Text(
                'Start Trip',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Mini FAB ─────────────────────────────────────────────────────────────────
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
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.surfaceVariant,
            shape: BoxShape.circle,
            boxShadow: AppShadows.card,
          ),
          child: Icon(icon, size: 20, color: AppColors.onSurface),
        ),
      ),
    );
  }
}
