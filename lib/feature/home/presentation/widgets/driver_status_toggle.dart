import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';

/// Animated online/offline toggle button with state-aware styling.
class DriverStatusToggle extends StatelessWidget {
  final DriverStatusState state;
  final VoidCallback onTap;

  const DriverStatusToggle({
    super.key,
    required this.state,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isOnline = state.isOnline;
    final isTransitioning = state.isLoading;

    return GestureDetector(
      onTap: isTransitioning ? null : onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: isOnline
              ? AppColors.primaryColor
              : (isDark ? AppColors.cardDark : AppColors.cardLight),
          borderRadius: BorderRadius.circular(AppRadius.full),
          border: Border.all(
            color: isOnline
                ? AppColors.primaryColor
                : (isDark ? AppColors.borderColorDark : AppColors.borderColor),
            width: 1.5,
          ),
          boxShadow: isOnline ? AppShadows.button : AppShadows.card,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Animated pulsing indicator
            _StatusDot(isOnline: isOnline, isAnimating: isTransitioning),
            const SizedBox(width: AppSpacing.sm),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: isTransitioning
                  ? SizedBox(
                      key: const ValueKey('loading'),
                      width: 56,
                      child: Center(
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.onSurfaceDark,
                          ),
                        ),
                      ),
                    )
                  : Text(
                      key: ValueKey(isOnline),
                      isOnline
                          ? S.of(context).homeStatusOnline
                          : S.of(context).homeStatusGoOnline,
                      style: AppTextStyles.w700_12.copyWith(
                        color: isOnline
                            ? AppColors.onSurfaceDark
                            : (isDark
                                  ? AppColors.onSurfaceDark
                                  : AppColors.onSurface),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusDot extends StatefulWidget {
  final bool isOnline;
  final bool isAnimating;
  const _StatusDot({required this.isOnline, required this.isAnimating});

  @override
  State<_StatusDot> createState() => _StatusDotState();
}

class _StatusDotState extends State<_StatusDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _pulse = Tween<double>(
      begin: 0.7,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pulse,
      builder: (_, _) => Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.isOnline
              ? AppColors.onlineLight.withValues(
                  alpha: _pulse.value,
                ) // ✅ was: AppColors.surfaceVariant — online dot uses onlineLight token
              : AppColors.offline,
        ),
      ),
    );
  }
}
