import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/helper_functions/snack_bars.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/rating_dialog.dart';

class TripSummarySheet extends StatelessWidget {
  final CompleteTripEntity summary;
  final VoidCallback onDismiss;

  const TripSummarySheet({
    super.key,
    required this.summary,
    required this.onDismiss,
  });

  String _formatDuration(BuildContext context, int? seconds) {
    if (seconds == null) return '--';
    final mins = seconds ~/ 60;
    final secs = seconds % 60;
    if (mins > 0 && secs > 0) {
      return S.of(context).tripSummaryDurationFormatMinsSecs(mins, secs);
    } else if (mins > 0) {
      return S.of(context).tripSummaryDurationFormatMins(mins);
    } else {
      return S.of(context).tripSummaryDurationFormatSecs(secs);
    }
  }

  String _formatDistance(BuildContext context, double? distanceKm) {
    if (distanceKm == null) return '--';
    return S.of(context).radiusKm(distanceKm.toStringAsFixed(2));
  }

  String _formatFare(double? fareTotal) {
    if (fareTotal == null) return '--';
    // Format fare with comma separators for thousands
    final fareStr = fareTotal.toStringAsFixed(fareTotal % 1 != 0 ? 2 : 0);
    final parts = fareStr.split('.');
    final intPart = parts[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
    return parts.length > 1 ? '$intPart.${parts[1]}' : intPart;
  }

  // String _formatCompletedTime(String? completedAt) {
  //   if (completedAt == null) return '';
  //   try {
  //     final dateTime = DateTime.parse(completedAt).toLocal();
  //     final hour = dateTime.hour.toString().padLeft(2, '0');
  //     final minute = dateTime.minute.toString().padLeft(2, '0');
  //     return '$hour:$minute';
  //   } catch (_) {
  //     return '';
  //   }
  // }

  Widget _buildBreakdownRow(
    BuildContext context,
    String title,
    double amount, {
    bool isDiscount = false,
    bool isTotal = false,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: isTotal
                ? AppTextStyles.w600_14.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  )
                : AppTextStyles.w400_12.copyWith(
                    color: isDark ? AppColors.textGreyDark : AppColors.textGrey,
                  ),
          ),
          Text(
            '${isDiscount ? '-' : ''}${_formatFare(amount.abs())}',
            style: isTotal
                ? AppTextStyles.w700_16.copyWith(
                    color: isDark
                        ? AppColors.primaryLight
                        : AppColors.primaryColor,
                  )
                : AppTextStyles.w600_12.copyWith(
                    color: isDiscount
                        ? AppColors.danger
                        : (isDark
                              ? AppColors.onSurfaceDark
                              : AppColors.onSurface),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocProvider(
      create: (context) => getIt.get<RideRequestCubit>(),
      child: Container(
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
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ── Bottom Sheet Drag Handle ─────────────────────────
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

                    // ── Total Fare Banner ────────────────────────────────
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.md.w,
                        vertical: AppSpacing.sm.h * 1.5,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primaryColor,
                            AppColors.primaryDark,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(AppRadius.lg.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryColor.withValues(
                              alpha: 0.3,
                            ),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            S.of(context).tripSummaryTotalFare,
                            style: AppTextStyles.w400_12.copyWith(
                              color: Colors.white.withValues(alpha: 0.8),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '${_formatFare(summary.fareTotal)} ${S.of(context).commonCurrencySyria}',
                            style: AppTextStyles.w700_24.copyWith(
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: AppSpacing.md.h),

                    // ── Distance & Duration Stats Row ────────────────────
                    Row(
                      children: [
                        // Distance Card
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(AppSpacing.md.r),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? AppColors.surfaceVariantDark
                                  : AppColors.surfaceVariant.withValues(
                                      alpha: 0.6,
                                    ),
                              borderRadius: BorderRadius.circular(
                                AppRadius.md.r,
                              ),
                              border: Border.all(
                                color: isDark
                                    ? AppColors.borderColorDark
                                    : AppColors.borderColor.withValues(
                                        alpha: 0.4,
                                      ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 36.r,
                                  height: 36.r,
                                  decoration: BoxDecoration(
                                    color: isDark
                                        ? AppColors.primaryLight.withValues(
                                            alpha: 0.15,
                                          )
                                        : AppColors.primarySurface,
                                    borderRadius: BorderRadius.circular(
                                      AppRadius.sm.r,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.route_rounded,
                                    color: isDark
                                        ? AppColors.primaryLight
                                        : AppColors.primaryColor,
                                    size: 20.r,
                                  ),
                                ),
                                SizedBox(width: AppSpacing.sm.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        S.of(context).tripSummaryDistance,
                                        style: AppTextStyles.w400_10.copyWith(
                                          color: isDark
                                              ? AppColors.textGreyDark
                                              : AppColors.textGrey,
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        _formatDistance(
                                          context,
                                          summary.distanceKm,
                                        ),
                                        style: AppTextStyles.w600_14.copyWith(
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
                          ),
                        ),

                        SizedBox(width: AppSpacing.sm.w),

                        // Duration Card
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(AppSpacing.md.r),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? AppColors.surfaceVariantDark
                                  : AppColors.surfaceVariant.withValues(
                                      alpha: 0.6,
                                    ),
                              borderRadius: BorderRadius.circular(
                                AppRadius.md.r,
                              ),
                              border: Border.all(
                                color: isDark
                                    ? AppColors.borderColorDark
                                    : AppColors.borderColor.withValues(
                                        alpha: 0.4,
                                      ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 36.r,
                                  height: 36.r,
                                  decoration: BoxDecoration(
                                    color: isDark
                                        ? AppColors.warning.withValues(
                                            alpha: 0.15,
                                          )
                                        : AppColors.warningSurface,
                                    borderRadius: BorderRadius.circular(
                                      AppRadius.sm.r,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.timer_rounded,
                                    color: AppColors.warningDark,
                                    size: 20.r,
                                  ),
                                ),
                                SizedBox(width: AppSpacing.sm.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        S.of(context).tripSummaryDuration,
                                        style: AppTextStyles.w400_10.copyWith(
                                          color: isDark
                                              ? AppColors.textGreyDark
                                              : AppColors.textGrey,
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        _formatDuration(
                                          context,
                                          summary.durationSec,
                                        ),
                                        style: AppTextStyles.w600_14.copyWith(
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
                          ),
                        ),
                      ],
                    ),

                    if (summary.originalFare != null ||
                        summary.discountAmount != null ||
                        summary.platformCommission != null) ...[
                      SizedBox(height: AppSpacing.md.h),
                      Container(
                        padding: EdgeInsets.all(AppSpacing.md.r),
                        decoration: BoxDecoration(
                          color: isDark
                              ? AppColors.surfaceVariantDark
                              : AppColors.surfaceVariant.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(AppRadius.md.r),
                          border: Border.all(
                            color: isDark
                                ? AppColors.borderColorDark
                                : AppColors.borderColor.withValues(alpha: 0.4),
                          ),
                        ),
                        child: Column(
                          children: [
                            if (summary.originalFare != null)
                              _buildBreakdownRow(
                                context,
                                S.of(context).tripSummaryOriginalFare,
                                summary.originalFare!,
                              ),
                            if (summary.discountAmount != null &&
                                summary.discountAmount! > 0)
                              _buildBreakdownRow(
                                context,
                                summary.appliedCoupon != null
                                    ? (summary.appliedCoupon!.code != null &&
                                              summary
                                                  .appliedCoupon!
                                                  .code!
                                                  .isNotEmpty
                                          ? '${S.of(context).tripSummaryDiscount} (${summary.appliedCoupon!.code})'
                                          : '${S.of(context).tripSummaryDiscount}${S.of(context).tripSummaryCoupon}')
                                    : S.of(context).tripSummaryDiscount,
                                summary.discountAmount!,
                                isDiscount: true,
                              ),
                            if (summary.platformCommission != null &&
                                summary.platformCommission! > 0)
                              _buildBreakdownRow(
                                context,
                                S.of(context).tripSummaryCommission,
                                summary.platformCommission!,
                                isDiscount: true,
                              ),
                            if (summary.finalFare != null &&
                                summary.platformCommission != null) ...[
                              Divider(
                                color: isDark
                                    ? AppColors.dividerDark
                                    : AppColors.divider,
                                height: AppSpacing.md.h * 2,
                              ),
                              _buildBreakdownRow(
                                context,
                                S.of(context).tripSummaryEarnings,
                                summary.finalFare! -
                                    summary.platformCommission!,
                                isTotal: true,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],

                    SizedBox(height: AppSpacing.lg.h),

                    // ── Rate Trip Button ─────────────────────────────────
                  ],
                ),
              ),
            ),
            BlocConsumer<RideRequestCubit, RideRequestState>(
              listener: (context, state) {
                if (state.errorMessage != null) {
                  showErrorMessage(state.errorMessage!, context);
                }
              },
              builder: (context, state) {
                if (state.isTripRated) {
                  return Container(
                    width: double.infinity,
                    height: 48.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.successSurface,
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                      border: Border.all(
                        color: AppColors.success.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: AppColors.success,
                          size: 20.r,
                        ),
                        SizedBox(width: AppSpacing.xs.w),
                        Text(
                          S.of(context).tripSummaryTripRated,
                          style: AppTextStyles.w600_14.copyWith(
                            color: AppColors.success,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return SizedBox(
                  width: double.infinity,
                  height: 48.h,
                  child: OutlinedButton.icon(
                    onPressed: state.isRatingTrip
                        ? null
                        : () async {
                            final result = await showRatingBottomSheet(
                              context: context,
                            );
                            if (result != null && context.mounted) {
                              final tripId =
                                  summary.tripId ??
                                  context
                                      .read<RideRequestCubit>()
                                      .state
                                      .rideRequestId;
                              if (tripId != null) {
                                context.read<RideRequestCubit>().rateTrip(
                                  tripId: tripId,
                                  score: result.score,
                                  comment: result.comment,
                                  tagIds: result.tagIds,
                                );
                              }
                            }
                          },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primaryColor,
                      side: const BorderSide(color: AppColors.primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.full.r),
                      ),
                    ),
                    icon: state.isRatingTrip
                        ? SizedBox(
                            width: 18.r,
                            height: 18.r,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: AppColors.primaryColor,
                            ),
                          )
                        : Icon(Icons.star_rounded, size: 20.r),
                    label: Text(
                      state.isRatingTrip
                          ? S.of(context).commonSubmitting
                          : S.of(context).ratingRateRider,
                      style: AppTextStyles.w600_14.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: AppSpacing.sm.h),

            // ── Done Button ──────────────────────────────────────
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: onDismiss,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.full.r),
                  ),
                ),
                child: Text(
                  S.of(context).commonDone,
                  style: AppTextStyles.w600_14.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: AppSpacing.sm.h),
          ],
        ),
      ),
    );
  }
}
