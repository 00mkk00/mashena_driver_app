import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

class RouteRow extends StatelessWidget {
  final RideRequestEntity trip;
  const RouteRow({super.key, required this.trip});

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
              Container(
                width: 2.w,
                height: 28.h,
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
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
                label: S.of(context).rideRequestPickup,
                address: _untilFirstComma(trip.pickupAddress), // ✅ real address from API
              ),
              SizedBox(height: AppSpacing.sm.h),
              _AddressItem(
                label: S.of(context).rideRequestDropOff,
                address: _untilFirstComma(trip.destAddress), // ✅ real address from API
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.w400_12.copyWith(
            color: isDark
                ? AppColors.onSurfaceVariantDark
                : AppColors.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          address,
          style: AppTextStyles.w500_12.copyWith(
            color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
