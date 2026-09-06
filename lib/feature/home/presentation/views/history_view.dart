import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/trip_history_cubit/trip_history_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/trip_history_cubit/trip_history_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/ride_histories/ride_history_card.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TripHistoryCubit>()..getTrips(),
      child: const _HistoryViewBody(),
    );
  }
}

class _HistoryViewBody extends StatefulWidget {
  const _HistoryViewBody();

  @override
  State<_HistoryViewBody> createState() => _HistoryViewBodyState();
}

class _HistoryViewBodyState extends State<_HistoryViewBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<TripHistoryCubit>().getTrips();
    }
  }

  RideStatus _mapStatus(String? statusStr, String? cancelledBy) {
    final s = statusStr?.trim().toLowerCase();
    final cb = cancelledBy?.trim().toLowerCase();

    if (s == null || s.isEmpty) {
      return RideStatus.completed;
    }

    // 1. Explicit Driver cancellation
    if (cb == 'driver' ||
        s == 'driver_cancelled' ||
        s == 'driver_canceled' ||
        s == 'cancelled_by_driver' ||
        s == 'canceled_by_driver') {
      return RideStatus.driverCancelled;
    }

    // 2. Cancellation (rider, admin, or general)
    if (s == 'cancelled' ||
        s == 'canceled' ||
        s == 'rider_cancelled' ||
        s == 'rider_canceled' ||
        s == 'admin_cancelled' ||
        s == 'admin_canceled' ||
        s.contains('cancel')) {
      return RideStatus.cancelled;
    }

    // 3. In progress / active trip states
    if (s == 'in_progress' ||
        s == 'started' ||
        s == 'accepted' ||
        s == 'arrived' ||
        s == 'on_trip' ||
        s == 'ongoing' ||
        s == 'active' ||
        s == 'en_route') {
      return RideStatus.inProgress;
    }

    // 4. Completed
    if (s == 'completed' || s == 'done' || s == 'finished') {
      return RideStatus.completed;
    }

    return RideStatus.completed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkScaffold
          : AppColors.lightScaffold,
      appBar: AppBar(
        title: Text(
          S.of(context).historyTitle,
          style: AppTextStyles.w600_18.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: BlocBuilder<TripHistoryCubit, TripHistoryState>(
        builder: (context, state) {
          if (state.status == TripHistoryStatus.initial ||
              (state.status == TripHistoryStatus.loading &&
                  state.trips.isEmpty)) {
            return ListView.separated(
              padding: EdgeInsets.all(AppSpacing.md.r),
              itemCount: 5,
              separatorBuilder: (_, _) => SizedBox(height: AppSpacing.md.h),
              itemBuilder: (context, index) {
                return ShimmerCard(height: 200.h);
              },
            );
          }

          if (state.status == TripHistoryStatus.failure &&
              state.trips.isEmpty) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 48.r,
                      color: AppColors.danger,
                    ),
                    SizedBox(height: AppSpacing.md.h),
                    Text(
                      state.errorMessage ?? S.of(context).historyFailedToLoad,
                      style: AppTextStyles.w500_14.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: AppSpacing.lg.h),
                    ElevatedButton(
                      onPressed: () => context
                          .read<TripHistoryCubit>()
                          .getTrips(isRefresh: true),
                      child: Text(S.of(context).commonRetry),
                    ),
                  ],
                ),
              ),
            );
          }

          if (state.trips.isEmpty) {
            return Center(
              child: Text(
                S.of(context).historyNoRides,
                style: AppTextStyles.w500_16.copyWith(
                  color: AppColors.textGrey,
                ),
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () =>
                context.read<TripHistoryCubit>().getTrips(isRefresh: true),
            child: ListView.separated(
              controller: _scrollController,
              padding: EdgeInsets.all(AppSpacing.md.r),
              itemCount: state.trips.length + (state.hasReachedMax ? 0 : 1),
              separatorBuilder: (_, _) => SizedBox(height: AppSpacing.md.h),
              itemBuilder: (context, index) {
                if (index >= state.trips.length) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: AppSpacing.md.h),
                    child: const Center(child: CircularProgressIndicator()),
                  );
                }

                final trip = state.trips[index];
                return RideHistoryCard(
                  status: _mapStatus(trip.status, trip.cancelledBy),
                  pickupAddress:
                      trip.pickupAddress ?? S.of(context).historyUnknownPickup,
                  destAddress:
                      trip.destAddress ??
                      S.of(context).historyUnknownDestination,
                  finalFare: (trip.finalFare ?? 0).toDouble(),
                  distanceKm: (trip.distanceKm ?? 0).toDouble(),
                  durationSec: trip.durationSec ?? 0,
                  fullName:
                      trip.rider?.fullName ?? S.of(context).historyUnknownRider,
                  phoneNumber: trip.rider?.phoneNumber ?? '',
                  ratingAvg: (trip.rider?.ratingAvg ?? 0).toDouble(),
                  myComment: trip.myRating?.comment,
                  myScore: trip.myRating?.score?.toDouble(),
                  myTags: trip.myRating?.tags
                      ?.map((t) => t.code ?? '')
                      .where((c) => c.isNotEmpty)
                      .toList(),
                  receivedComment: trip.receivedRating?.comment,
                  receivedScore: trip.receivedRating?.score?.toDouble(),
                  receivedTags: trip.receivedRating?.tags
                      ?.map((t) => t.code ?? '')
                      .where((c) => c.isNotEmpty)
                      .toList(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
