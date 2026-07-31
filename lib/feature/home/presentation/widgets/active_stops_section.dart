import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

class ActiveStopsSection extends StatefulWidget {
  final List<RideRequestStopEntity> stops;
  const ActiveStopsSection({super.key, required this.stops});

  @override
  State<ActiveStopsSection> createState() => _ActiveStopsSectionState();
}

class _ActiveStopsSectionState extends State<ActiveStopsSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _anim;
  bool _expanded = true;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 280),
      value: 1.0,
    );
    _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeOutCubic);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _expanded = !_expanded);
    _expanded ? _ctrl.forward() : _ctrl.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.warningSurface,
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(color: AppColors.warning.withValues(alpha: 0.25)),
      ),
      child: Column(
        children: [
          // ── Header ────────────────────────────────────────
          GestureDetector(
            onTap: _toggle,
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.sm.w,
                vertical: AppSpacing.xs.h,
              ),
              child: Row(
                children: [
                  Container(
                    width: 20.r,
                    height: 20.r,
                    decoration: BoxDecoration(
                      color: AppColors.warning,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${widget.stops.length}',
                        style: AppTextStyles.w700_12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSpacing.xs.w),
                  Text(
                    S.of(context).rideRequestStopsAlongTheWay(widget.stops.length, widget.stops.length > 1 ? 's' : ''),
                    style: AppTextStyles.w600_12.copyWith(
                      color: AppColors.warningDark,
                    ),
                  ),
                  const Spacer(),
                  AnimatedRotation(
                    turns: _expanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 280),
                    curve: Curves.easeOutCubic,
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 18.r,
                      color: AppColors.warning,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ── Timeline ─────────────────────────────────────
          SizeTransition(
            sizeFactor: _anim,
            child: FadeTransition(
              opacity: _anim,
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  AppSpacing.sm.w,
                  0,
                  AppSpacing.sm.w,
                  AppSpacing.sm.h,
                ),
                padding: EdgeInsets.all(AppSpacing.sm.r),
                decoration: BoxDecoration(
                  color: AppColors.cardLight,
                  borderRadius: BorderRadius.circular(AppRadius.sm.r),
                ),
                child: Column(
                  children: List.generate(widget.stops.length, (i) {
                    final stop = widget.stops[i];
                    final isLast = i == widget.stops.length - 1;
                    return IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ── Indicator ─────────────────────
                          SizedBox(
                            width: 26.w,
                            child: Column(
                              children: [
                                Container(
                                  width: 22.r,
                                  height: 22.r,
                                  decoration: BoxDecoration(
                                    color: AppColors.warning,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${i + 1}',
                                      style: AppTextStyles.w700_12.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                if (!isLast)
                                  Expanded(
                                    child: Container(
                                      width: 1.5.w,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 2.h,
                                      ),
                                      color: AppColors.warning.withValues(
                                        alpha: 0.25,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          SizedBox(width: AppSpacing.xs.w),

                          // ── Text ──────────────────────────
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: isLast ? 0 : AppSpacing.sm.h,
                                top: 3.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).tripStopLabel(stop.order),
                                    style: AppTextStyles.w700_12.copyWith(
                                      color: AppColors.warningDark,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    stop.address,
                                    style: AppTextStyles.w400_12.copyWith(
                                      color: AppColors.onSurface,
                                      height: 1.4,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
