import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

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
                  _RouteSection(rideRequest: rideRequest!),
                  if (rideRequest!.stops.isNotEmpty) ...[
                    SizedBox(height: AppSpacing.sm.h),
                    _ActiveStopsSection(stops: rideRequest!.stops),
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
            child: _EndTripButton(onEndTrip: onEndTrip),
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
                      color: AppColors.online.withOpacity(0.5),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(width: AppSpacing.xs.w),
              Text(
                'On Trip',
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
                'elapsed',
                style: AppTextStyles.w400_10.copyWith(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ─── Route Section ────────────────────────────────────────────────────────────
class _RouteSection extends StatelessWidget {
  final RideRequestEntity rideRequest;
  const _RouteSection({required this.rideRequest});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSpacing.md.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Timeline indicators ────────────────────────────
          SizedBox(
            width: 24.w,
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Container(
                  width: 12.r,
                  height: 12.r,
                  decoration: BoxDecoration(
                    color: AppColors.online,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.online.withOpacity(0.3),
                      width: 3,
                    ),
                  ),
                ),
                Container(
                  width: 1.5.w,
                  height: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.online.withOpacity(0.6),
                        AppColors.danger.withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 12.r,
                  height: 12.r,
                  decoration: BoxDecoration(
                    color: AppColors.danger,
                    borderRadius: BorderRadius.circular(3.r),
                    border: Border.all(
                      color: AppColors.danger.withOpacity(0.3),
                      width: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: AppSpacing.sm.w),

          // ── Addresses ─────────────────────────────────────
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AddressRow(
                  label: 'Pickup',
                  address: rideRequest.pickupAddress,
                  labelColor: AppColors.online,
                ),
                SizedBox(height: AppSpacing.sm.h),
                _AddressRow(
                  label: 'Drop-off',
                  address: rideRequest.destAddress,
                  labelColor: AppColors.danger,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AddressRow extends StatelessWidget {
  final String label;
  final String address;
  final Color labelColor;

  const _AddressRow({
    required this.label,
    required this.address,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: AppTextStyles.w700_12.copyWith(
            color: labelColor,
            letterSpacing: 0.8,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          address,
          style: AppTextStyles.w500_12.copyWith(
            color: AppColors.onSurface,
            height: 1.3,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// ─── Active Stops Section ─────────────────────────────────────────────────────
class _ActiveStopsSection extends StatefulWidget {
  final List<RideRequestStopEntity> stops;
  const _ActiveStopsSection({required this.stops});

  @override
  State<_ActiveStopsSection> createState() => _ActiveStopsSectionState();
}

class _ActiveStopsSectionState extends State<_ActiveStopsSection>
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
        border: Border.all(color: AppColors.warning.withOpacity(0.25)),
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
                    'stop${widget.stops.length > 1 ? 's' : ''} along the way',
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
                                      color: AppColors.warning.withOpacity(
                                        0.25,
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
                                    'STOP ${stop.order}',
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

// ─── End Trip Button ──────────────────────────────────────────────────────────

class _EndTripButton extends StatefulWidget {
  final VoidCallback onEndTrip;
  const _EndTripButton({required this.onEndTrip});

  @override
  State<_EndTripButton> createState() => _EndTripButtonState();
}

class _EndTripButtonState extends State<_EndTripButton>
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
            AppColors.danger.withOpacity(0.12),
            AppColors.online.withOpacity(0.15),
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
                  AppColors.danger.withOpacity(0.3),
                  AppColors.online.withOpacity(0.3),
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
                            'Slide to end trip',
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
                      color: thumbColor.withOpacity(0.08),
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
                            color: thumbColor.withOpacity(0.4),
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
