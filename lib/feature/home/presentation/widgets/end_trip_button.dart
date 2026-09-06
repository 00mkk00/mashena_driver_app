import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class EndTripButton extends StatefulWidget {
  final VoidCallback onEndTrip;
  const EndTripButton({super.key, required this.onEndTrip});

  @override
  State<EndTripButton> createState() => _EndTripButtonState();
}

class _EndTripButtonState extends State<EndTripButton>
    with SingleTickerProviderStateMixin {
  double _dragProgress = 0.0; // 0.0 → 1.0
  bool _completed = false;

  late AnimationController _resetController;
  late Animation<double> _resetAnimation;

  static const double _thumbSize = 52.0;
  static const double _threshold = 0.85; // fire at 85% drag

  @override
  void initState() {
    super.initState();
    _resetController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _resetAnimation = CurvedAnimation(
      parent: _resetController,
      curve: Curves.easeOutCubic,
    );
    _resetAnimation.addListener(() {
      setState(() {
        _dragProgress = (1 - _resetAnimation.value) * _dragProgress;
      });
    });
  }

  @override
  void dispose() {
    _resetController.dispose();
    super.dispose();
  }

  void _onDragUpdate(DragUpdateDetails details, double maxDrag) {
    if (_completed) return;
    setState(() {
      _dragProgress = ((_dragProgress * maxDrag + details.delta.dx) / maxDrag)
          .clamp(0.0, 1.0);
    });
  }

  void _onDragEnd(double maxDrag) {
    if (_completed) return;

    if (_dragProgress >= _threshold) {
      // ✅ Complete
      setState(() {
        _dragProgress = 1.0;
        _completed = true;
      });
      HapticFeedback.heavyImpact();
      Future.delayed(const Duration(milliseconds: 300), () {
        widget.onEndTrip();
        // Reset for safety in case widget is still mounted
        if (mounted) {
          setState(() {
            _dragProgress = 0.0;
            _completed = false;
          });
        }
      });
    } else {
      // ❌ Snap back
      _resetController.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: _thumbSize.h,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final trackWidth = constraints.maxWidth;
          final maxDrag = trackWidth - _thumbSize.w - AppSpacing.xs.w * 2;
          final thumbOffset = _dragProgress * maxDrag;

          // Color transitions from danger → success as user drags
          final trackColor = Color.lerp(
            AppColors.danger.withValues(alpha: 0.12),
            AppColors.online.withValues(alpha: 0.15),
            _dragProgress,
          )!;
          final thumbColor = Color.lerp(
            AppColors.danger,
            AppColors.online,
            _dragProgress,
          )!;
          final labelOpacity = (1 - (_dragProgress * 2)).clamp(0.0, 1.0);

          return Container(
            decoration: BoxDecoration(
              color: trackColor,
              borderRadius: BorderRadius.circular(AppRadius.full.r),
              border: Border.all(
                color: Color.lerp(
                  AppColors.danger.withValues(alpha: 0.3),
                  AppColors.online.withValues(alpha: 0.3),
                  _dragProgress,
                )!,
              ),
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                // ── Track label ──────────────────────────────
                Positioned.fill(
                  child: Center(
                    child: Opacity(
                      opacity: labelOpacity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 14.r,
                            color: AppColors.danger,
                          ),
                          SizedBox(width: AppSpacing.xs.w),
                          Text(
                            S.of(context).tripSlideToEnd,
                            style: AppTextStyles.w600_14.copyWith(
                              color: AppColors.danger,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // ── Fill progress ────────────────────────────
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: AnimatedContainer(
                    duration: Duration.zero,
                    width: thumbOffset + _thumbSize.w / 2 + AppSpacing.xs.w,
                    decoration: BoxDecoration(
                      color: thumbColor.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                  ),
                ),

                // ── Draggable thumb ──────────────────────────
                Positioned(
                  left: AppSpacing.xs.w + thumbOffset,
                  child: GestureDetector(
                    onHorizontalDragUpdate: (d) => _onDragUpdate(d, maxDrag),
                    onHorizontalDragEnd: (_) => _onDragEnd(maxDrag),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      width: _thumbSize.w,
                      height: _thumbSize.h - AppSpacing.xs.h,
                      decoration: BoxDecoration(
                        color: thumbColor,
                        borderRadius: BorderRadius.circular(AppRadius.full.r),
                        boxShadow: [
                          BoxShadow(
                            color: thumbColor.withValues(alpha: 0.4),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: _completed
                          ? Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 22.r,
                            )
                          : Icon(
                              Icons.stop_rounded,
                              color: Colors.white,
                              size: 22.r,
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
