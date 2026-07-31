import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class WaitingForRideCard extends StatefulWidget {
  const WaitingForRideCard({super.key});

  @override
  State<WaitingForRideCard> createState() => _WaitingForRideCardState();
}

class _WaitingForRideCardState extends State<WaitingForRideCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _dotController;

  @override
  void initState() {
    super.initState();
    _dotController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
  }

  @override
  void dispose() {
    _dotController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.md.w),
      padding: EdgeInsets.all(AppSpacing.md.r),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.lg.r),
        boxShadow: AppShadows.card,
      ),
      child: Row(
        children: [
          // ── Search icon ─────────────────────────────────────
          Container(
            width: 44.r,
            height: 44.r,
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.primaryLight.withValues(alpha: 0.15)
                  : AppColors.primarySurface,
              borderRadius: BorderRadius.circular(AppRadius.sm.r),
            ),
            child: Icon(
              Icons.search_rounded,
              color: isDark ? AppColors.primaryLight : AppColors.primaryColor,
              size: 22.r,
            ),
          ),

          SizedBox(width: AppSpacing.md.w),

          // ── Labels ──────────────────────────────────────────
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).homeLookingForPassengers,
                  style: AppTextStyles.w500_12.copyWith(
                    color: isDark
                        ? AppColors.onSurfaceDark
                        : AppColors.onSurface,
                  ),
                ),
                SizedBox(height: 4.h),
                AnimatedBuilder(
                  animation: _dotController,
                  builder: (_, _) {
                    final dots =
                        '.' * ((_dotController.value * 4).floor().clamp(1, 3));
                    return Text(
                      '${S.of(context).homeSearching}$dots',
                      style: AppTextStyles.w400_10.copyWith(
                        color: isDark
                            ? AppColors.primaryLight
                            : AppColors.primaryColor,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          // ── Pulse ring ──────────────────────────────────────
          const _PulseRing(),
        ],
      ),
    );
  }
}

// ─── Pulse Ring ───────────────────────────────────────────────────────────────
class _PulseRing extends StatefulWidget {
  const _PulseRing();

  @override
  State<_PulseRing> createState() => _PulseRingState();
}

class _PulseRingState extends State<_PulseRing>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _size;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
    _size = Tween<double>(
      begin: 20.r,
      end: 36.r,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _opacity = Tween<double>(
      begin: 0.8,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (_, _) => Stack(
        alignment: Alignment.center,
        children: [
          // ── Expanding ring ─────────────────────────────────
          Container(
            width: _size.value,
            height: _size.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primaryColor.withValues(alpha: _opacity.value),
                width: 2,
              ),
            ),
          ),
          // ── Center dot ─────────────────────────────────────
          Container(
            width: 12.r,
            height: 12.r,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
