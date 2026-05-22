import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';

class RideRequestCard extends StatefulWidget {
  final RideRequestModel request;
  final int countdownSeconds;
  final VoidCallback onAccept;
  final VoidCallback onReject;
  final bool isExpanded;
  final VoidCallback onToggleExpand;

  const RideRequestCard({
    super.key,
    required this.request,
    required this.countdownSeconds,
    required this.onAccept,
    required this.onReject,
    required this.isExpanded,
    required this.onToggleExpand,
  });

  @override
  State<RideRequestCard> createState() => _RideRequestCardState();
}

class _RideRequestCardState extends State<RideRequestCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
        );
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeIn));
    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(28.r),
              bottom: Radius.circular(20.r),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.13),
                blurRadius: 30,
                offset: const Offset(0, 8),
                spreadRadius: -4,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _DragHandle(onTap: widget.onToggleExpand),
              _CountdownBar(seconds: widget.countdownSeconds, total: 30),
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
                child: Column(
                  children: [
                    _PassengerInfoRow(request: widget.request),
                    SizedBox(height: 14.h),
                    Divider(color: AppColors.divider, height: 1),
                    SizedBox(height: 14.h),
                    _RouteDetails(request: widget.request),
                    SizedBox(height: 14.h),
                    _TripMetaRow(request: widget.request),
                    SizedBox(height: 16.h),
                    _ActionButtons(
                      onAccept: widget.onAccept,
                      onReject: widget.onReject,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Drag Handle ──────────────────────────────────────────────────────────────
class _DragHandle extends StatelessWidget {
  final VoidCallback onTap;
  const _DragHandle({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Center(
          child: Container(
            width: 36.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.divider,
              borderRadius: BorderRadius.circular(999.r),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Countdown Bar ────────────────────────────────────────────────────────────
class _CountdownBar extends StatelessWidget {
  final int seconds;
  final int total;
  const _CountdownBar({required this.seconds, required this.total});

  Color get _barColor {
    final ratio = seconds / total;
    if (ratio > 0.5) return AppColors.online;
    if (ratio > 0.25) return AppColors.warning;
    return AppColors.danger;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Ride Request', style: AppTextStyles.w600_16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: _barColor.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(999.r),
                ),
                child: Text(
                  '${seconds}s',
                  style: AppTextStyles.w600_12.copyWith(color: _barColor),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(999.r),
            child: LinearProgressIndicator(
              value: seconds / total,
              backgroundColor: AppColors.divider,
              valueColor: AlwaysStoppedAnimation<Color>(_barColor),
              minHeight: 5.h,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Passenger Info Row ───────────────────────────────────────────────────────
class _PassengerInfoRow extends StatelessWidget {
  final RideRequestModel request;
  const _PassengerInfoRow({required this.request});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        Stack(
          children: [
            CircleAvatar(
              radius: 26.r,
              backgroundImage: NetworkImage(request.passengerPhotoUrl),
              backgroundColor: AppColors.surfaceVariant,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 16.w,
                height: 16.w,
                decoration: const BoxDecoration(
                  color: AppColors.online,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, size: 10.sp, color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(width: 12.w),

        // Name & rating
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(request.passengerName, style: AppTextStyles.w600_14),
              SizedBox(height: 3.h),
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    size: 13.sp,
                    color: AppColors.warning,
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    '${request.passengerRating}',
                    style: AppTextStyles.w600_12.copyWith(
                      color: AppColors.onSurface,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '· ${request.passengerTotalTrips} trips',
                    style: AppTextStyles.w400_12.copyWith(
                      color: AppColors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Payment chip
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppColors.onlineSurface,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              Icon(
                request.paymentMethod == 'cash'
                    ? Icons.attach_money
                    : Icons.credit_card_outlined,
                size: 13.sp,
                color: AppColors.online,
              ),
              SizedBox(width: 2.w),
              Text(
                request.paymentMethod.toUpperCase(),
                style: AppTextStyles.w700_14.copyWith(color: AppColors.online),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ─── Route Details ────────────────────────────────────────────────────────────
class _RouteDetails extends StatelessWidget {
  final RideRequestModel request;
  const _RouteDetails({required this.request});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Route line
        SizedBox(
          width: 20.w,
          child: Column(
            children: [
              Container(
                width: 10.w,
                height: 10.w,
                decoration: const BoxDecoration(
                  color: AppColors.online,
                  shape: BoxShape.circle,
                ),
              ),
              Container(width: 2.w, height: 32.h, color: AppColors.divider),
              Container(
                width: 10.w,
                height: 10.w,
                decoration: BoxDecoration(
                  color: AppColors.danger,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10.w),

        // Addresses
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AddressItem(label: 'Pickup', address: request.pickupAddress),
              SizedBox(height: 12.h),
              _AddressItem(
                label: 'Drop-off',
                address: request.destinationAddress,
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
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// ─── Trip Meta Row ────────────────────────────────────────────────────────────
class _TripMetaRow extends StatelessWidget {
  final RideRequestModel request;
  const _TripMetaRow({required this.request});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _MetaChip(
          icon: Icons.straighten_outlined,
          value: '${request.distanceKm.toStringAsFixed(1)} km',
          color: AppColors.info,
        ),
        SizedBox(width: 8.w),
        _MetaChip(
          icon: Icons.access_time_outlined,
          value: '~${request.estimatedMinutes} min',
          color: AppColors.warning,
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Est. Fare',
              style: AppTextStyles.w400_12.copyWith(
                color: AppColors.onSurfaceVariant,
              ),
            ),
            Text(
              'EGP ${request.estimatedFare.toStringAsFixed(2)}',
              style: AppTextStyles.w700_20.copyWith(color: AppColors.online),
            ),
          ],
        ),
      ],
    );
  }
}

class _MetaChip extends StatelessWidget {
  final IconData icon;
  final String value;
  final Color color;
  const _MetaChip({
    required this.icon,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Icon(icon, size: 13.sp, color: color),
          SizedBox(width: 4.w),
          Text(value, style: AppTextStyles.w600_12.copyWith(color: color)),
        ],
      ),
    );
  }
}

// ─── Action Buttons ───────────────────────────────────────────────────────────
class _ActionButtons extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onReject;
  const _ActionButtons({required this.onAccept, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Reject
        Expanded(
          flex: 2,
          child: OutlinedButton.icon(
            onPressed: onReject,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.danger, width: 1.5.w),
              foregroundColor: AppColors.danger,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 13.h),
            ),
            icon: Icon(Icons.close_rounded, size: 17.sp),
            label: Text(
              'Reject',
              style: AppTextStyles.w600_14.copyWith(color: AppColors.danger),
            ),
          ),
        ),
        SizedBox(width: 10.w),

        // Accept
        Expanded(
          flex: 3,
          child: ElevatedButton.icon(
            onPressed: onAccept,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.online,
              foregroundColor: Colors.white,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 13.h),
            ),
            icon: Icon(Icons.check_rounded, size: 17.sp),
            label: Text(
              'Accept',
              style: AppTextStyles.w700_14.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
