import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/complete_trip_entity.dart';

class TripSummarySheet extends StatelessWidget {
  final CompleteTripEntity summary;
  final VoidCallback onDismiss;

  const TripSummarySheet({
    super.key,
    required this.summary,
    required this.onDismiss,
  });

  String _formatDuration(int? seconds) {
    if (seconds == null) return '--';
    final mins = seconds ~/ 60;
    final secs = seconds % 60;
    if (mins > 0 && secs > 0) {
      return '${mins}m ${secs}s';
    } else if (mins > 0) {
      return '$mins min';
    } else {
      return '$secs sec';
    }
  }

  String _formatDistance(double? distanceKm) {
    if (distanceKm == null) return '--';
    return '${distanceKm.toStringAsFixed(2)} km';
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
    String title,
    double amount, {
    bool isDiscount = false,
    bool isTotal = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: isTotal
                ? AppTextStyles.w600_14.copyWith(color: AppColors.darkScaffold)
                : AppTextStyles.w400_12.copyWith(color: AppColors.textGrey),
          ),
          Text(
            '${isDiscount ? '-' : ''}${_formatFare(amount.abs())}',
            style: isTotal
                ? AppTextStyles.w700_16.copyWith(color: AppColors.primaryColor)
                : AppTextStyles.w600_12.copyWith(
                    color: isDiscount
                        ? AppColors.danger
                        : AppColors.darkScaffold,
                  ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final completedTime = _formatCompletedTime(summary.completedAt);

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      padding: EdgeInsets.all(AppSpacing.lg.r),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        boxShadow: AppShadows.card,
      ),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            // ── Bottom Sheet Drag Handle ─────────────────────────
            Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.textGrey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(AppRadius.full.r),
              ),
            ),
            SizedBox(height: AppSpacing.md.h),

            // // ── Header Icon & Title ─────────────────────────────
            // Container(
            //   width: 64.r,
            //   height: 64.r,
            //   decoration: BoxDecoration(
            //     color: AppColors.onlineSurface,
            //     shape: BoxShape.circle,
            //     boxShadow: [
            //       BoxShadow(
            //         color: AppColors.online.withValues(alpha: 0.2),
            //         blurRadius: 16,
            //         spreadRadius: 2,
            //       ),
            //     ],
            //   ),
            //   child: Icon(
            //     Icons.check_circle_rounded,
            //     color: AppColors.online,
            //     size: 36.r,
            //   ),
            // ),
            // SizedBox(height: AppSpacing.sm.h),

            // Text(
            //   'Trip Completed!',
            //   style: AppTextStyles.w700_18.copyWith(
            //     color: AppColors.darkScaffold,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // if (completedTime.isNotEmpty) ...[
            //   SizedBox(height: AppSpacing.xs.h),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // if (summary.tripId != null)
            //       //   Container(
            //       //     padding: EdgeInsets.symmetric(
            //       //       horizontal: AppSpacing.xs.w * 1.5,
            //       //       vertical: 2.h,
            //       //     ),
            //       //     decoration: BoxDecoration(
            //       //       color: AppColors.primarySurface,
            //       //       borderRadius: BorderRadius.circular(AppRadius.sm.r),
            //       //     ),
            //       //     child: Text(
            //       //       'Trip #${summary.tripId}',
            //       //       style: AppTextStyles.w600_12.copyWith(
            //       //         color: AppColors.primaryColor,
            //       //       ),
            //       //     ),
            //       //   ),
            //       if (summary.tripId != null && completedTime.isNotEmpty)
            //         // SizedBox(width: AppSpacing.xs.w * 1.5),
            //         if (completedTime.isNotEmpty)
            //           Text(
            //             'at $completedTime',
            //             style: AppTextStyles.w400_12.copyWith(
            //               color: AppColors.textGrey,
            //             ),
            //           ),
            //     ],
            //   ),
            // ],

            // SizedBox(height: AppSpacing.lg.h),
            // Divider(color: AppColors.divider, height: 1),
            // SizedBox(height: AppSpacing.lg.h),

            // ── Total Fare Banner ────────────────────────────────
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.sm.h * 1.5,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primaryColor, AppColors.primaryDark],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(AppRadius.lg.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor.withValues(alpha: 0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Total Fare',
                    style: AppTextStyles.w400_12.copyWith(
                      color: Colors.white.withValues(alpha: 0.8),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '${_formatFare(summary.fareTotal)} S.P',
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
                      color: AppColors.surfaceVariant.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                      border: Border.all(
                        color: AppColors.borderColor.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 36.r,
                          height: 36.r,
                          decoration: BoxDecoration(
                            color: AppColors.primarySurface,
                            borderRadius: BorderRadius.circular(AppRadius.sm.r),
                          ),
                          child: Icon(
                            Icons.route_rounded,
                            color: AppColors.primaryColor,
                            size: 20.r,
                          ),
                        ),
                        SizedBox(width: AppSpacing.sm.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Distance',
                                style: AppTextStyles.w400_10.copyWith(
                                  color: AppColors.textGrey,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                _formatDistance(summary.distanceKm),
                                style: AppTextStyles.w600_14.copyWith(
                                  color: AppColors.darkScaffold,
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
                      color: AppColors.surfaceVariant.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(AppRadius.md.r),
                      border: Border.all(
                        color: AppColors.borderColor.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 36.r,
                          height: 36.r,
                          decoration: BoxDecoration(
                            color: AppColors.warningSurface,
                            borderRadius: BorderRadius.circular(AppRadius.sm.r),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Duration',
                                style: AppTextStyles.w400_10.copyWith(
                                  color: AppColors.textGrey,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                _formatDuration(summary.durationSec),
                                style: AppTextStyles.w600_14.copyWith(
                                  color: AppColors.darkScaffold,
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
                  color: AppColors.surfaceVariant.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(AppRadius.md.r),
                  border: Border.all(
                    color: AppColors.borderColor.withValues(alpha: 0.4),
                  ),
                ),
                child: Column(
                  children: [
                    if (summary.originalFare != null)
                      _buildBreakdownRow(
                        'Original Fare',
                        summary.originalFare!,
                      ),
                    if (summary.discountAmount != null &&
                        summary.discountAmount! > 0)
                      _buildBreakdownRow(
                        'Discount${summary.appliedCoupon == true ? ' (Coupon)' : ''}',
                        summary.discountAmount!,
                        isDiscount: true,
                      ),
                    if (summary.platformCommission != null &&
                        summary.platformCommission! > 0)
                      _buildBreakdownRow(
                        'Platform Commission',
                        summary.platformCommission!,
                        isDiscount: true,
                      ),
                    if (summary.finalFare != null &&
                        summary.platformCommission != null) ...[
                      Divider(
                        color: AppColors.divider,
                        height: AppSpacing.md.h * 2,
                      ),
                      _buildBreakdownRow(
                        'Your Earnings',
                        summary.finalFare! - summary.platformCommission!,
                        isTotal: true,
                      ),
                    ],
                  ],
                ),
              ),
            ],

            SizedBox(height: AppSpacing.lg.h),

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
                  'Done',
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
