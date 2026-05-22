import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class ActiveTripCard extends StatelessWidget {
  final RideRequestModelLite trip;
  final Duration elapsed;
  final VoidCallback onEndTrip;

  const ActiveTripCard({
    super.key,
    required this.trip,
    required this.elapsed,
    required this.onEndTrip,
  });

  String _formatDuration(Duration d) {
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '${d.inHours > 0 ? '${d.inHours}:' : ''}$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.cardLight, // ✅ was: AppColors.textGrey
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: AppShadows.floating,
        border: Border.all(
          color: AppColors.primaryColor,
        ), // ✅ was: theme.primaryColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // "On Trip" badge
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors
                      .primarySurface, // ✅ was: AppColors.textfieldHintGrey
                  borderRadius: BorderRadius.circular(AppRadius.full),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color:
                            AppColors.primaryColor, // ✅ was: theme.primaryColor
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Text(
                      'On Trip',
                      style: AppTextStyles.w700_12.copyWith(
                        // ✅ was: hardcoded TextStyle
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                _formatDuration(elapsed),
                style: AppTextStyles.w700_20.copyWith(letterSpacing: -0.5),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Heading to ${trip.destination}',
            style: AppTextStyles.w400_18.copyWith(
              color: AppColors.onSurface, // ✅ explicit token
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppSpacing.md),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onEndTrip,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.danger,
                foregroundColor: AppColors.onSurfaceDark, // ✅ was: Colors.white
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              child: Text(
                'End Trip',
                style: AppTextStyles.w700_14, // ✅ was: hardcoded TextStyle
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Minimal trip reference for active trip card
class RideRequestModelLite {
  final String passengerName;
  final String destination;
  final double fare;

  const RideRequestModelLite({
    required this.passengerName,
    required this.destination,
    required this.fare,
  });
}
