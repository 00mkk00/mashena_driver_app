import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/route_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/trip_meta_row.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/active_stops_section.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/end_trip_button.dart';

class ActiveTripCard extends StatelessWidget {
  final RideRequestEntity? rideRequest;
  final Duration elapsed;
  final VoidCallback onEndTrip;

  const ActiveTripCard({
    super.key,
    required this.rideRequest,
    required this.elapsed,
    required this.onEndTrip,
  });

  String _formatDuration(Duration d) {
    final h = d.inHours;
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return h > 0 ? '$h:$m:$s' : '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        boxShadow: AppShadows.card,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Top accent bar + header ────────────────────────
          _TripHeader(elapsed: elapsed, formatDuration: _formatDuration),

          // ── Route + stops ──────────────────────────────────
          if (rideRequest != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
              child: Column(
                children: [
                  SizedBox(height: AppSpacing.sm.h),

                  TripMetaRow(ride: rideRequest!),
                  SizedBox(height: AppSpacing.sm.h),

                  RouteRow(trip: rideRequest!),
                  if (rideRequest!.stops.isNotEmpty) ...[
                    SizedBox(height: AppSpacing.sm.h),
                    ActiveStopsSection(stops: rideRequest!.stops),
                  ],
                  SizedBox(height: AppSpacing.md.h),
                ],
              ),
            ),

          // ── End trip button ────────────────────────────────
          Padding(
            padding: EdgeInsets.fromLTRB(
              AppSpacing.md.w,
              0,
              AppSpacing.md.w,
              AppSpacing.md.h,
            ),
            child: EndTripButton(onEndTrip: onEndTrip),
          ),
        ],
      ),
    );
  }
}

// ─── Header ───────────────────────────────────────────────────────────────────
class _TripHeader extends StatelessWidget {
  final Duration elapsed;
  final String Function(Duration) formatDuration;

  const _TripHeader({required this.elapsed, required this.formatDuration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.xl.r),
        ),
      ),
      child: Row(
        children: [
          // ── On Trip badge ──────────────────────────────────
          Row(
            children: [
              Container(
                width: 8.r,
                height: 8.r,
                decoration: BoxDecoration(
                  color: AppColors.online,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.online.withValues(alpha: 0.5),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(width: AppSpacing.xs.w),
              Text(
                S.of(context).tripOnTrip,
                style: AppTextStyles.w700_14.copyWith(color: Colors.white),
              ),
            ],
          ),

          const Spacer(),

          // ── Live timer ─────────────────────────────────────
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                formatDuration(elapsed),
                style: AppTextStyles.w700_20.copyWith(
                  color: Colors.white,
                  letterSpacing: -0.5,
                  fontFeatures: [const FontFeature.tabularFigures()],
                ),
              ),
              Text(
                S.of(context).tripElapsed,
                style: AppTextStyles.w400_10.copyWith(
                  color: Colors.white.withValues(alpha: .6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
