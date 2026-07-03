import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

class RouteRow extends StatelessWidget {
  final RideRequestEntity trip;
  const RouteRow({super.key, required this.trip});

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
