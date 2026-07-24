import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';

/// ---------------------------------------------------------------------
/// UX RULES APPLIED (read before editing)
/// ---------------------------------------------------------------------
/// 1. Progressive disclosure: status + fare + route + rider are the
///    "scan" layer (always visible). The comment/rating EXCHANGE is
///    a "read" layer, tucked below a divider so the card doesn't
///    read as a wall of text in a history list of 20+ items.
/// 2. One primary number per card: `finalFare` gets the largest,
///    boldest treatment. Everything else is secondary — a history
///    list is a fare ledger first, a trip log second.
/// 3. Status is color, not just text — a colored dot + chip using
///    *Surface tokens, never raw hex, so success/danger/warning
///    stay consistent app-wide.
/// 4. Rating symmetry: "you rated / they rated" are shown as a
///    mirrored pair, not stacked paragraphs — the eye should compare
///    them in one glance, not read two separate blocks.
/// 5. Truncation over wrap: names/addresses use ellipsis + maxLines,
///    never let one long address blow out card height in a scrolling
///    list — that breaks scroll-performance predictability.
/// 6. Tap target: the whole card is one InkWell for "view trip
///    detail" — don't bury the tap target in a single row.
/// 7. No nested cards / no double shadows: inner sections use
///    dividers and color blocks, never their own boxShadow.
/// ---------------------------------------------------------------------

enum RideStatus { completed, cancelled, driverCancelled, inProgress }

extension RideStatusX on RideStatus {
  String get label => switch (this) {
    RideStatus.completed => 'Completed',
    RideStatus.cancelled => 'Cancelled',
    RideStatus.driverCancelled => 'Cancelled by you',
    RideStatus.inProgress => 'In progress',
  };

  Color color(BuildContext context) => switch (this) {
    RideStatus.completed => AppColors.success,
    RideStatus.cancelled => AppColors.danger,
    RideStatus.driverCancelled => AppColors.warning,
    RideStatus.inProgress => AppColors.info,
  };

  Color surface(BuildContext context) => switch (this) {
    RideStatus.completed => AppColors.successSurface,
    RideStatus.cancelled => AppColors.dangerSurface,
    RideStatus.driverCancelled => AppColors.warningSurface,
    RideStatus.inProgress => AppColors.infoSurface,
  };
}

class RideHistoryCard extends StatelessWidget {
  const RideHistoryCard({
    super.key,
    required this.status,
    required this.pickupAddress,
    required this.destAddress,
    required this.finalFare,
    required this.distanceKm,
    required this.durationSec,
    required this.fullName,
    required this.phoneNumber,
    required this.ratingAvg,
    this.myComment,
    this.myScore,
    this.receivedComment,
    this.receivedScore,
    this.onTap,
  });

  final RideStatus status;
  final String pickupAddress;
  final String destAddress;
  final double finalFare;
  final double distanceKm;
  final int durationSec;
  final String fullName;
  final String phoneNumber;
  final double ratingAvg;

  /// Rating/comment YOU (the driver) gave the rider.
  final String? myComment;
  final double? myScore;

  /// Rating/comment the rider gave YOU.
  final String? receivedComment;
  final double? receivedScore;

  final VoidCallback? onTap;

  String get _durationLabel {
    final m = (durationSec / 60).round();
    if (m < 60) return '${m}m';
    final h = m ~/ 60;
    final rem = m % 60;
    return rem == 0 ? '${h}h' : '${h}h ${rem}m';
  }

  bool get _hasExchange =>
      myComment != null ||
      myScore != null ||
      receivedComment != null ||
      receivedScore != null;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
        child: Container(
          padding: EdgeInsets.all(AppSpacing.lg.r),
          decoration: BoxDecoration(
            color: isDark ? AppColors.cardDark : AppColors.cardLight,
            borderRadius: BorderRadius.circular(AppRadius.xl.r),
            border: Border.all(
              color: isDark
                  ? AppColors.dividerDark
                  : AppColors.borderColor.withValues(alpha: 0.4),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.05),
                blurRadius: 24,
                spreadRadius: 0,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StatusAndFareRow(status: status, finalFare: finalFare),
              SizedBox(height: AppSpacing.md.r),
              _RouteBlock(
                pickupAddress: pickupAddress,
                destAddress: destAddress,
              ),
              SizedBox(height: AppSpacing.sm.r),
              _MetaChipsRow(
                distanceKm: distanceKm,
                durationLabel: _durationLabel,
              ),
              SizedBox(height: AppSpacing.md.r),
              Divider(
                height: 1,
                color: isDark ? AppColors.dividerDark : AppColors.divider,
              ),
              SizedBox(height: AppSpacing.md.r),
              _RiderRow(
                fullName: fullName,
                phoneNumber: phoneNumber,
                ratingAvg: ratingAvg,
              ),
              if (_hasExchange) ...[
                SizedBox(height: AppSpacing.sm.r),
                Divider(
                  height: 1,
                  color: isDark ? AppColors.dividerDark : AppColors.divider,
                ),
                SizedBox(height: AppSpacing.sm.r),
                _RatingExchange(
                  myComment: myComment,
                  myScore: myScore,
                  receivedComment: receivedComment,
                  receivedScore: receivedScore,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Status chip + the single dominant number on the card: the fare.
class _StatusAndFareRow extends StatelessWidget {
  const _StatusAndFareRow({required this.status, required this.finalFare});

  final RideStatus status;
  final double finalFare;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.sm.r,
            vertical: (AppSpacing.xs / 2).r,
          ),
          decoration: BoxDecoration(
            color: status.surface(context),
            borderRadius: BorderRadius.circular(AppRadius.full.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 6.r,
                height: 6.r,
                decoration: BoxDecoration(
                  color: status.color(context),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: AppSpacing.xs.r),
              Text(
                status.label,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: status.color(context),
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: finalFare.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.earning,
                  letterSpacing: -0.5,
                ),
              ),
              TextSpan(
                text: ' S.P',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.earning.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Pickup → destination shown as a compact two-line route, not a map.
class _RouteBlock extends StatelessWidget {
  const _RouteBlock({required this.pickupAddress, required this.destAddress});

  final String pickupAddress;
  final String destAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AddressLine(
          color: AppColors.success,
          text: pickupAddress,
          isFirst: true,
        ),
        _AddressLine(
          color: AppColors.danger,
          text: destAddress,
          isFirst: false,
        ),
      ],
    );
  }
}

class _AddressLine extends StatelessWidget {
  const _AddressLine({
    required this.color,
    required this.text,
    required this.isFirst,
  });

  final Color color;
  final String text;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (!isFirst)
              Container(width: 2.w, height: 12.h, color: AppColors.divider),
            if (isFirst) SizedBox(height: 4.h),
            Container(
              width: 10.r,
              height: 10.r,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: color, width: 2.5),
              ),
            ),
            if (isFirst)
              Container(width: 2.w, height: 12.h, color: AppColors.divider),
          ],
        ),
        SizedBox(width: AppSpacing.sm.r),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: isFirst ? 0 : 8.h),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Distance + duration as small secondary chips — supporting facts,
/// never competing visually with the fare.
class _MetaChipsRow extends StatelessWidget {
  const _MetaChipsRow({required this.distanceKm, required this.durationLabel});

  final double distanceKm;
  final String durationLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.route_outlined, size: 14.r, color: AppColors.textGrey),
        SizedBox(width: AppSpacing.xs.r),
        Text(
          '${distanceKm.toStringAsFixed(1)} km',
          style: TextStyle(fontSize: 12.sp, color: AppColors.textGrey),
        ),
        SizedBox(width: AppSpacing.md.r),
        Icon(Icons.schedule_outlined, size: 14.r, color: AppColors.textGrey),
        SizedBox(width: AppSpacing.xs.r),
        Text(
          durationLabel,
          style: TextStyle(fontSize: 12.sp, color: AppColors.textGrey),
        ),
      ],
    );
  }
}

/// Rider identity — name, phone, their overall rating average.
/// Kept to a single row: this is identification, not a profile view.
class _RiderRow extends StatelessWidget {
  const _RiderRow({
    required this.fullName,
    required this.phoneNumber,
    required this.ratingAvg,
  });

  final String fullName;
  final String phoneNumber;
  final double ratingAvg;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.surfaceVariantDark.withValues(alpha: 0.3)
            : AppColors.surfaceVariant.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(AppRadius.md.r),
        border: Border.all(
          color: isDark
              ? Colors.transparent
              : AppColors.borderColor.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16.r,
            backgroundColor: AppColors.primarySurface,
            child: Text(
              fullName.isNotEmpty ? fullName[0].toUpperCase() : '?',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          SizedBox(width: AppSpacing.sm.r),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurface,
                  ),
                ),
                Text(
                  phoneNumber,
                  style: TextStyle(fontSize: 12.sp, color: AppColors.textGrey),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.star_rounded, size: 16.r, color: AppColors.warning),
              SizedBox(width: 2.r),
              Text(
                ratingAvg.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// The two-way rating/comment exchange — the "read layer".
/// Shown as a mirrored pair (You ↔ Them) so it's scannable as a
/// comparison, not two separate paragraphs.
class _RatingExchange extends StatelessWidget {
  const _RatingExchange({
    this.myComment,
    this.myScore,
    this.receivedComment,
    this.receivedScore,
  });

  final String? myComment;
  final double? myScore;
  final String? receivedComment;
  final double? receivedScore;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _ExchangeSide(
            label: 'You rated',
            score: myScore,
            comment: myComment,
          ),
        ),
        SizedBox(width: AppSpacing.md.r),
        Container(width: 1, height: 32.r, color: AppColors.divider),
        SizedBox(width: AppSpacing.md.r),
        Expanded(
          child: _ExchangeSide(
            label: 'Rider rated you',
            score: receivedScore,
            comment: receivedComment,
          ),
        ),
      ],
    );
  }
}

class _ExchangeSide extends StatelessWidget {
  const _ExchangeSide({
    required this.label,
    required this.score,
    required this.comment,
  });

  final String label;
  final double? score;
  final String? comment;

  @override
  Widget build(BuildContext context) {
    final hasData = score != null || (comment?.isNotEmpty ?? false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textGrey,
          ),
        ),
        SizedBox(height: 2.r),
        if (!hasData)
          Text(
            'No rating yet',
            style: TextStyle(
              fontSize: 12.sp,
              fontStyle: FontStyle.italic,
              color: AppColors.textfieldHintGrey,
            ),
          )
        else ...[
          if (score != null)
            Row(
              children: [
                Icon(Icons.star_rounded, size: 14.r, color: AppColors.warning),
                SizedBox(width: 2.r),
                Text(
                  score!.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.onSurface,
                  ),
                ),
              ],
            ),
          if (comment != null && comment!.isNotEmpty) ...[
            SizedBox(height: 2.r),
            Text(
              comment!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.onSurfaceVariant,
                height: 1.3,
              ),
            ),
          ],
        ],
      ],
    );
  }
}
