import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

class StopsSection extends StatefulWidget {
  final List<RideRequestStopEntity> stops;
  const StopsSection({super.key, required this.stops});

  @override
  State<StopsSection> createState() => _StopsSectionState();
}

class _StopsSectionState extends State<StopsSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _expandAnimation;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _expanded = !_expanded);
    _expanded ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    // ── No stops — render nothing ──────────────────────────────
    if (widget.stops.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Header ─────────────────────────────────────────────
        GestureDetector(
          onTap: _toggle,
          behavior: HitTestBehavior.opaque,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.sm.w,
              vertical: AppSpacing.xs.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.warningSurface,
              borderRadius: BorderRadius.circular(AppRadius.full.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 18.r,
                  height: 18.r,
                  decoration: BoxDecoration(
                    color: AppColors.warning.withValues(alpha: .15),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${widget.stops.length}',
                      style: AppTextStyles.w400_10.copyWith(
                        color: AppColors.warning,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppSpacing.xs.w),
                Text(
                  S
                      .of(context)
                      .rideRequestStopsAlongTheWay(
                        widget.stops.length,
                        widget.stops.length > 1 ? 's' : '',
                      ),
                  style: AppTextStyles.w600_12.copyWith(
                    color: AppColors.warningDark,
                  ),
                ),
                SizedBox(width: AppSpacing.xs.w),
                AnimatedRotation(
                  turns: _expanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 16.r,
                    color: AppColors.warning,
                  ),
                ),
              ],
            ),
          ),
        ),

        // ── Animated timeline ───────────────────────────────────
        SizeTransition(
          sizeFactor: _expandAnimation,
          child: FadeTransition(
            opacity: _expandAnimation,
            child: Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm.h),
              child: _StopsTimeline(stops: widget.stops),
            ),
          ),
        ),
      ],
    );
  }
}

// ─── Timeline ─────────────────────────────────────────────────────────────────
class _StopsTimeline extends StatelessWidget {
  final List<RideRequestStopEntity> stops;
  const _StopsTimeline({required this.stops});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: AppColors.warningSurface.withValues(alpha: .5),
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: AppColors.warning.withValues(alpha: .2),
          width: 1,
        ),
      ),
      child: Column(
        children: List.generate(stops.length, (index) {
          final stop = stops[index];
          final isLast = index == stops.length - 1;

          return IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Left: number + connector ──────────────────
                SizedBox(
                  width: 28.w,
                  child: Column(
                    children: [
                      // Numbered circle
                      Container(
                        width: 22.r,
                        height: 22.r,
                        decoration: BoxDecoration(
                          color: AppColors.warning,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.warning.withValues(alpha: .3),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: AppTextStyles.w400_10.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // Connector line
                      if (!isLast)
                        Expanded(
                          child: Container(
                            width: 2.w,
                            margin: EdgeInsets.symmetric(vertical: 3.h),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.warning.withValues(alpha: .6),
                                  AppColors.warning.withValues(alpha: 0.1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                SizedBox(width: AppSpacing.xs.w),

                // ── Right: address + order badge ──────────────
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: isLast ? 0 : AppSpacing.sm.h,
                      top: 2.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).tripStopLabel(stop.order),
                                style: AppTextStyles.w400_10.copyWith(
                                  color: AppColors.warningDark,
                                  letterSpacing: 0.3,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                stop.address,
                                style: AppTextStyles.w400_12.copyWith(
                                  color: isDark
                                      ? AppColors.onSurfaceDark
                                      : AppColors.onSurface,
                                  height: 1.4,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
          );
        }),
      ),
    );
  }
}
