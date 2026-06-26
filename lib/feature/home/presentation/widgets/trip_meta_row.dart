// ─── Trip Meta Row (Fare + Distance) ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

class TripMetaRow extends StatelessWidget {
  final RideRequestEntity ride;
  const TripMetaRow({super.key, required this.ride});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _MetaChip(
          icon: Icons.attach_money_rounded,
          iconColor: AppColors.earning,
          backgroundColor: AppColors.earningSurface,
          label: ride.estimatedFare != null
              ? '${ride.estimatedFare} ${ride.currency ?? ''}'.trim()
              : '—',
        ),
        SizedBox(width: AppSpacing.sm.w),
        _MetaChip(
          icon: Icons.route_rounded,
          iconColor: AppColors.primaryColor,
          backgroundColor: AppColors.primarySurface,
          label: ride.distanceKm != null
              ? '${ride.distanceKm!.floor()} km'
              : '—',
        ),
        SizedBox(width: AppSpacing.sm.w),
        _MetaChip(
          icon: Icons.timelapse_rounded,
          iconColor: AppColors.danger,
          backgroundColor: AppColors.dangerSurface,
          label: '${ride.durationMin.toString()} Min',
        ),
      ],
    );
  }
}

class _MetaChip extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final String label;

  const _MetaChip({
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.sm.w,
        vertical: AppSpacing.xs.h,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppRadius.sm.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.r, color: iconColor),
          SizedBox(width: 4.w),
          Text(label, style: AppTextStyles.w600_12.copyWith(color: iconColor)),
        ],
      ),
    );
  }
}
