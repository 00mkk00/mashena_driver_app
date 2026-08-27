import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/passenger_pool_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/shared_ride_cubit/shared_ride_state.dart';
import 'package:shimmer/shimmer.dart';

class AvailablePassengerPoolsSheet extends StatelessWidget {
  const AvailablePassengerPoolsSheet({super.key});

  void _triggerRefresh(BuildContext context) {
    final mapState = context.read<MapCubit>().state;
    final driverState = context.read<DriverStatusCubit>().state;
    final currentPos = mapState.currentPosition;
    final radius = driverState.radiusKm.toDouble();

    if (currentPos != null) {
      context.read<SharedRideCubit>().fetchAvailablePools(
        lat: currentPos.latitude,
        lng: currentPos.longitude,
        radiusKm: radius,
      );
    } else {
      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((pos) {
            if (context.mounted) {
              context.read<SharedRideCubit>().fetchAvailablePools(
                lat: pos.latitude,
                lng: pos.longitude,
                radiusKm: radius,
              );
            }
          })
          .catchError((_) {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<SharedRideCubit, SharedRideState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(AppSpacing.md.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── Header Row ─────────────────────────────────────────
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.primaryLight.withValues(alpha: 0.15)
                          : AppColors.primarySurface,
                      borderRadius: BorderRadius.circular(AppRadius.sm.r),
                    ),
                    child: Icon(
                      Icons.groups_rounded,
                      color: isDark
                          ? AppColors.primaryLight
                          : AppColors.primaryColor,
                      size: 22.r,
                    ),
                  ),
                  SizedBox(width: AppSpacing.sm.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).sharedAvailablePoolsTitle,
                          style: AppTextStyles.w700_18.copyWith(
                            color: isDark
                                ? AppColors.onSurfaceDark
                                : AppColors.onSurface,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          S.of(context).sharedAvailablePoolsSubtitle,
                          style: AppTextStyles.w400_12.copyWith(
                            color: isDark
                                ? AppColors.textGreyDark
                                : AppColors.textGrey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  if (state.isLoadingPools)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CupertinoActivityIndicator(),
                    )
                  else
                    IconButton(
                      icon: Icon(
                        Icons.refresh_rounded,
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                        size: 18.r,
                      ),
                      onPressed: () => _triggerRefresh(context),
                      tooltip: S.of(context).sharedRefresh,
                    ),
                  IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      context.read<DriverStatusCubit>().exitSharedRide();
                    },
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.md.h),

              // ── Content ─────────────────────────────────────────────
              if (state.isLoadingPools)
                const _PoolsListShimmer()
              else if (state.poolsErrorMessage != null)
                _buildErrorView(context, state.poolsErrorMessage!, isDark)
              else if (state.availablePools.isEmpty)
                _buildEmptyView(context, isDark)
              else
                _buildPoolsList(context, state, isDark),
            ],
          ),
        );
      },
    );
  }

  Widget _buildErrorView(
    BuildContext context,
    String errorMessage,
    bool isDark,
  ) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.lg.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
      ),
      child: Column(
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: AppColors.danger,
            size: 36.r,
          ),
          SizedBox(height: AppSpacing.sm.h),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: AppTextStyles.w500_14.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          ElevatedButton.icon(
            onPressed: () => _triggerRefresh(context),
            icon: const Icon(Icons.refresh_rounded, size: 18),
            label: Text(S.of(context).sharedRefresh),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.full.r),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyView(BuildContext context, bool isDark) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg.w,
        vertical: AppSpacing.xl.h,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(AppSpacing.md.r),
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.primaryLight.withValues(alpha: 0.1)
                  : AppColors.primarySurface,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.group_off_rounded,
              color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
              size: 40.r,
            ),
          ),
          SizedBox(height: AppSpacing.md.h),
          Text(
            S.of(context).sharedNoAvailablePools,
            textAlign: TextAlign.center,
            style: AppTextStyles.w700_16.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
          ),
          SizedBox(height: AppSpacing.xs.h),
          Text(
            S.of(context).sharedNoAvailablePoolsSubtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.w400_12.copyWith(
              color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
            ),
          ),
          SizedBox(height: AppSpacing.lg.h),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => _triggerRefresh(context),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    side: BorderSide(
                      color: isDark
                          ? AppColors.borderColorDark
                          : AppColors.borderColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                  ),
                  child: Text(
                    S.of(context).sharedRefresh,
                    style: AppTextStyles.w600_14.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                    ),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md.w),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Switch to Create ride flow
                    context.read<SharedRideCubit>().reset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                  ),
                  child: Text(
                    S.of(context).sharedCreateInstead,
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

  Widget _buildPoolsList(
    BuildContext context,
    SharedRideState state,
    bool isDark,
  ) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.availablePools.length,
      separatorBuilder: (context, index) => SizedBox(height: AppSpacing.sm.h),
      itemBuilder: (context, index) {
        final pool = state.availablePools[index];
        return _PoolCard(
          pool: pool,
          isAccepting: state.acceptingPoolId == pool.id,
          onJoin: () =>
              context.read<SharedRideCubit>().acceptPassengerPool(pool.id),
        );
      },
    );
  }
}

// ─── Pool Card ───────────────────────────────────────────────────────────────

class _PoolCard extends StatelessWidget {
  final PassengerPoolEntity pool;
  final bool isAccepting;
  final VoidCallback onJoin;

  const _PoolCard({
    required this.pool,
    required this.isAccepting,
    required this.onJoin,
  });

  String _untilFirstComma(String address) {
    final trimmed = address.trim();
    if (trimmed.isEmpty) return trimmed;
    final commaIndex = trimmed.indexOf(RegExp(r'[,،]'));
    if (commaIndex != -1) {
      final part = trimmed.substring(0, commaIndex).trim();
      if (part.isNotEmpty) return part;
    }
    return trimmed;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final departureFormatted = pool.departureTime != null
        ? DateFormat('hh:mm a').format(pool.departureTime!)
        : null;

    return Container(
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        border: Border.all(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor,
        ),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Top Row: Departure time badge & Seats count ─────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (departureFormatted != null)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.primaryLight.withValues(alpha: 0.15)
                        : AppColors.primarySurface,
                    borderRadius: BorderRadius.circular(AppRadius.full.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        size: 14.r,
                        color: isDark
                            ? AppColors.primaryLight
                            : AppColors.primaryColor,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        departureFormatted,
                        style: AppTextStyles.w600_12.copyWith(
                          color: isDark
                              ? AppColors.primaryLight
                              : AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              else
                const SizedBox.shrink(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.cardDark : AppColors.cardLight,
                  borderRadius: BorderRadius.circular(AppRadius.full.r),
                  border: Border.all(
                    color: isDark
                        ? AppColors.borderColorDark
                        : AppColors.borderColor,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person_rounded,
                      size: 14.r,
                      color: isDark
                          ? AppColors.textGreyDark
                          : AppColors.textGrey,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      S
                          .of(context)
                          .sharedPoolSeatsCount(
                            pool.currentPassengers,
                            pool.maxPassengers,
                          ),
                      style: AppTextStyles.w600_12.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.sm.h),

          // ── Meeting Point ───────────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Container(
                  width: 10.r,
                  height: 10.r,
                  decoration: const BoxDecoration(
                    color: AppColors.success,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.sm.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).sharedMeetingPoint,
                      style: AppTextStyles.w400_12.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                    Text(
                      _untilFirstComma(
                        pool.meetingAddress.isNotEmpty
                            ? pool.meetingAddress
                            : (pool.meetingPlaceName != null &&
                                    pool.meetingPlaceName!.isNotEmpty
                                ? pool.meetingPlaceName!
                                : S.of(context).homeMyLocation),
                      ),
                      style: AppTextStyles.w600_14.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.xs.h),

          // ── Destination ─────────────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Container(
                  width: 10.r,
                  height: 10.r,
                  decoration: const BoxDecoration(
                    color: AppColors.danger,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.sm.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).sharedDestinationPoint,
                      style: AppTextStyles.w400_12.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                    Text(
                      _untilFirstComma(
                        pool.destinationAddress.isNotEmpty
                            ? pool.destinationAddress
                            : S.of(context).sharedDestinationPoint,
                      ),
                      style: AppTextStyles.w600_14.copyWith(
                        color: isDark
                            ? AppColors.onSurfaceDark
                            : AppColors.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.md.h),

          // ── Join Button ─────────────────────────────────────────
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: ElevatedButton(
              onPressed: isAccepting ? null : onJoin,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                disabledBackgroundColor: AppColors.primaryColor.withValues(
                  alpha: 0.6,
                ),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md.r),
                ),
              ),
              child: isAccepting
                  ? const CupertinoActivityIndicator(color: Colors.white)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle_outline_rounded,
                          size: 18,
                          color: Colors.white,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          S.of(context).sharedJoinThisPool,
                          style: AppTextStyles.w700_14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Shimmer Loading List ───────────────────────────────────────────────────

class _PoolsListShimmer extends StatelessWidget {
  const _PoolsListShimmer();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = isDark
        ? AppColors.borderColorDark
        : AppColors.borderColor;
    final highlightColor = isDark
        ? AppColors.surfaceVariantDark
        : AppColors.primarySurface;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Column(
        children: List.generate(2, (_) {
          return Container(
            margin: EdgeInsets.only(bottom: AppSpacing.sm.h),
            padding: EdgeInsets.all(AppSpacing.md.r),
            height: 140.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(AppRadius.lg.r),
            ),
          );
        }),
      ),
    );
  }
}
