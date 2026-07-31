import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/ride_request_entity.dart';

/// Call this from anywhere you have a BuildContext to show the ride popup.
///
/// ```dart
/// RideRequestPopup.show(
///   context,
///   ride: rideRequestEntity,
///   totalSeconds: 10,
///   onAccept: () { ... },
///   onReject: () { ... },
/// );
/// ```
class RideRequestPopup {
  static OverlayEntry? _entry;

  static void show(
    BuildContext context, {
    required RideRequestEntity ride,
    required int totalSeconds,
    required VoidCallback onAccept,
    required VoidCallback onReject,
  }) {
    dismiss(); // Remove any existing popup first

    _entry = OverlayEntry(
      builder: (_) => _RidePopupOverlay(
        ride: ride,
        totalSeconds: totalSeconds,
        onAccept: () {
          dismiss();
          onAccept();
        },
        onReject: () {
          dismiss();
          onReject();
        },
        onDismiss: dismiss,
      ),
    );

    Overlay.of(context).insert(_entry!);
  }

  static void dismiss() {
    _entry?.remove();
    _entry = null;
  }
}

// ─── Full-screen overlay with blur backdrop ───────────────────────────────────
class _RidePopupOverlay extends StatefulWidget {
  final RideRequestEntity ride;
  final int totalSeconds;
  final VoidCallback onAccept;
  final VoidCallback onReject;
  final VoidCallback onDismiss;

  const _RidePopupOverlay({
    required this.ride,
    required this.totalSeconds,
    required this.onAccept,
    required this.onReject,
    required this.onDismiss,
  });

  @override
  State<_RidePopupOverlay> createState() => _RidePopupOverlayState();
}

class _RidePopupOverlayState extends State<_RidePopupOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _slideAnim;
  late Animation<double> _fadeAnim;
  late Animation<double> _scaleAnim;

  late int _secondsLeft;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _secondsLeft = widget.totalSeconds;

    // ── Entry animation ────────────────────────────────────────────────
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _slideAnim = Tween<Offset>(begin: const Offset(0, -0.08), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _animController, curve: Curves.easeOutCubic),
        );

    _fadeAnim = CurvedAnimation(parent: _animController, curve: Curves.easeOut);

    _scaleAnim = Tween<double>(begin: 0.92, end: 1.0).animate(
      CurvedAnimation(parent: _animController, curve: Curves.easeOutBack),
    );

    _animController.forward();

    // Haptic feedback on arrival
    HapticFeedback.heavyImpact();

    // ── Countdown ─────────────────────────────────────────────────────
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) {
        t.cancel();
        return;
      }
      setState(() {
        _secondsLeft--;
      });
      if (_secondsLeft <= 0) {
        t.cancel();
        widget.onReject(); // auto-reject on timeout
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animController.dispose();
    super.dispose();
  }

  // Animate out then call callback
  Future<void> _animateOut(VoidCallback after) async {
    _timer?.cancel();
    await _animController.reverse();
    after();
  }

  Color get _timerColor {
    final ratio = _secondsLeft / widget.totalSeconds;
    if (ratio > 0.5) return AppColors.online;
    if (ratio > 0.25) return AppColors.warning;
    return AppColors.danger;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          // ── Dim backdrop ───────────────────────────────────────────────
          GestureDetector(
            onTap: () => _animateOut(widget.onDismiss),
            child: AnimatedBuilder(
              animation: _fadeAnim,
              builder: (_, _) => Container(
                color: Colors.black.withValues(alpha: 0.55 * _fadeAnim.value),
              ),
            ),
          ),

          // ── Card ───────────────────────────────────────────────────────
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.md.w,
                vertical: AppSpacing.md.h,
              ),
              child: FadeTransition(
                opacity: _fadeAnim,
                child: SlideTransition(
                  position: _slideAnim,
                  child: ScaleTransition(
                    scale: _scaleAnim,
                    child: _PopupCard(
                      ride: widget.ride,
                      secondsLeft: _secondsLeft,
                      totalSeconds: widget.totalSeconds,
                      timerColor: _timerColor,
                      onAccept: () => _animateOut(widget.onAccept),
                      onReject: () => _animateOut(widget.onReject),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── The visible card ─────────────────────────────────────────────────────────
class _PopupCard extends StatelessWidget {
  final RideRequestEntity ride;
  final int secondsLeft;
  final int totalSeconds;
  final Color timerColor;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  const _PopupCard({
    required this.ride,
    required this.secondsLeft,
    required this.totalSeconds,
    required this.timerColor,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardLight,
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        boxShadow: [
          ...AppShadows.card,
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: .12),
            blurRadius: 32,
            spreadRadius: -4,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: AppColors.primaryColor.withValues(alpha: .15),
          width: 1.5,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Coloured top band ────────────────────────────────────────
            _TopBand(
              secondsLeft: secondsLeft,
              totalSeconds: totalSeconds,
              timerColor: timerColor,
            ),

            // ── Content ──────────────────────────────────────────────────
            Padding(
              padding: EdgeInsets.fromLTRB(
                AppSpacing.md.w,
                AppSpacing.md.h,
                AppSpacing.md.w,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Meta chips row
                  _MetaChipsRow(ride: ride),

                  SizedBox(height: AppSpacing.md.h),
                  Divider(color: AppColors.divider, height: 1),
                  SizedBox(height: AppSpacing.md.h),

                  // Route
                  _RouteSection(ride: ride),

                  if (ride.stops.isNotEmpty) ...[
                    SizedBox(height: AppSpacing.sm.h),
                    _StopsChip(count: ride.stops.length),
                  ],

                  SizedBox(height: AppSpacing.md.h),
                ],
              ),
            ),

            // ── Action buttons ────────────────────────────────────────────
            Padding(
              padding: EdgeInsets.fromLTRB(
                AppSpacing.md.w,
                0,
                AppSpacing.md.w,
                AppSpacing.md.h,
              ),
              child: _ActionRow(onAccept: onAccept, onReject: onReject),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Coloured top band with countdown ────────────────────────────────────────
class _TopBand extends StatelessWidget {
  final int secondsLeft;
  final int totalSeconds;
  final Color timerColor;

  const _TopBand({
    required this.secondsLeft,
    required this.totalSeconds,
    required this.timerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.md.w,
        vertical: AppSpacing.sm.h + 2.h,
      ),
      child: Column(
        children: [
          // Title row
          Row(
            children: [
              Container(
                width: 8.r,
                height: 8.r,
                decoration: const BoxDecoration(
                  color: AppColors.onlineLight,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSpacing.xs.w),
              Text(
                S.of(context).rideRequestNew,
                style: AppTextStyles.w700_16.copyWith(color: Colors.white),
              ),
              const Spacer(),
              // Timer badge
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm.w,
                  vertical: 3.h,
                ),
                decoration: BoxDecoration(
                  color: timerColor.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(AppRadius.full.r),
                  border: Border.all(
                    color: timerColor.withValues(alpha: 0.5),
                    width: 1.2,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.timer_rounded, size: 12.r, color: timerColor),
                    SizedBox(width: 3.w),
                    Text(
                      S.of(context).rideRequestSeconds(secondsLeft),
                      style: AppTextStyles.w700_12.copyWith(color: timerColor),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: AppSpacing.sm.h),

          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.full.r),
            child: TweenAnimationBuilder<double>(
              tween: Tween(
                begin: secondsLeft / totalSeconds,
                end: secondsLeft / totalSeconds,
              ),
              duration: const Duration(milliseconds: 400),
              builder: (_, val, _) => LinearProgressIndicator(
                value: val,
                backgroundColor: Colors.white.withValues(alpha: .2),
                valueColor: AlwaysStoppedAnimation<Color>(timerColor),
                minHeight: 5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Meta chips (fare, distance, duration) ────────────────────────────────────
class _MetaChipsRow extends StatelessWidget {
  final RideRequestEntity ride;
  const _MetaChipsRow({required this.ride});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Chip(
          icon: Icons.attach_money_rounded,
          iconColor: AppColors.earning,
          bg: AppColors.earningSurface,
          label: ride.estimatedFare != null
              ? '${ride.estimatedFare} ${ride.currency ?? ''}'.trim()
              : '—',
        ),
        SizedBox(width: AppSpacing.sm.w),
        _Chip(
          icon: Icons.route_rounded,
          iconColor: AppColors.primaryColor,
          bg: AppColors.primarySurface,
          label: ride.distanceKm != null
              ? S.of(context).radiusKm(ride.distanceKm!.floor())
              : '—',
        ),
        SizedBox(width: AppSpacing.sm.w),
        _Chip(
          icon: Icons.timelapse_rounded,
          iconColor: AppColors.danger,
          bg: AppColors.dangerSurface,
          label: '${ride.durationMin ?? '—'} ${S.of(context).commonMin}',
        ),
        if (ride.isNight == true) ...[
          SizedBox(width: AppSpacing.sm.w),
          _Chip(
            icon: Icons.nights_stay_rounded,
            iconColor: AppColors.info,
            bg: AppColors.infoSurface,
            label: S.of(context).rideRequestNight,
          ),
        ],
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color bg;
  final String label;
  const _Chip({
    required this.icon,
    required this.iconColor,
    required this.bg,
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
        color: bg,
        borderRadius: BorderRadius.circular(AppRadius.sm.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13.r, color: iconColor),
          SizedBox(width: 3.w),
          Text(label, style: AppTextStyles.w600_12.copyWith(color: iconColor)),
        ],
      ),
    );
  }
}

// ─── Route section ────────────────────────────────────────────────────────────
class _RouteSection extends StatelessWidget {
  final RideRequestEntity ride;
  const _RouteSection({required this.ride});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicators
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
              Container(width: 2.w, height: 30.h, color: AppColors.divider),
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AddressItem(
                label: S.of(context).rideRequestPickup,
                address: ride.pickupAddress,
              ),
              SizedBox(height: AppSpacing.sm.h),
              _AddressItem(
                label: S.of(context).rideRequestDropOff,
                address: ride.destAddress,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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

// ─── Stops chip ───────────────────────────────────────────────────────────────
class _StopsChip extends StatelessWidget {
  final int count;
  const _StopsChip({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 16.r,
            height: 16.r,
            decoration: const BoxDecoration(
              color: AppColors.warning,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$count',
                style: AppTextStyles.w700_12.copyWith(
                  color: Colors.white,
                  fontSize: 9.sp,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSpacing.xs.w),
          Text(
            S
                .of(context)
                .rideRequestStopsAlongTheWay(count, count > 1 ? 's' : ''),
            style: AppTextStyles.w600_12.copyWith(color: AppColors.warningDark),
          ),
        ],
      ),
    );
  }
}

// ─── Action buttons ───────────────────────────────────────────────────────────
class _ActionRow extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onReject;
  const _ActionRow({required this.onAccept, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: onReject,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.danger, width: 1.5),
              foregroundColor: AppColors.danger,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 14.h),
            ),
            icon: Icon(Icons.close_rounded, size: 17.r),
            label: Text(
              S.of(context).commonReject,
              style: AppTextStyles.w600_14.copyWith(color: AppColors.danger),
            ),
          ),
        ),
        SizedBox(width: AppSpacing.sm.w),
        Expanded(
          flex: 2, // Accept is wider — emphasise it
          child: ElevatedButton.icon(
            onPressed: onAccept,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.online,
              foregroundColor: Colors.white,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.md.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 14.h),
            ),
            icon: Icon(Icons.check_rounded, size: 17.r),
            label: Text(
              S.of(context).rideRequestAccept,
              style: AppTextStyles.w700_14.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
