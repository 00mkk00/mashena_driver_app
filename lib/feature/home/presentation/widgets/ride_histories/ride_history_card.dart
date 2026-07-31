import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';

enum RideStatus { completed, cancelled, driverCancelled, inProgress }

extension RideStatusX on RideStatus {
  String getLabel(BuildContext context) => switch (this) {
    RideStatus.completed => S.of(context).historyStatusCompleted,
    RideStatus.cancelled => S.of(context).historyStatusCancelled,
    RideStatus.driverCancelled => S.of(context).historyStatusDriverCancelled,
    RideStatus.inProgress => S.of(context).historyStatusInProgress,
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
    this.myTags,
    this.receivedComment,
    this.receivedScore,
    this.receivedTags,
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

  /// Rating/comment/tags YOU (the driver) gave the rider.
  final String? myComment;
  final double? myScore;
  final List<String>? myTags;

  /// Rating/comment/tags the rider gave YOU.
  final String? receivedComment;
  final double? receivedScore;
  final List<String>? receivedTags;

  final VoidCallback? onTap;

  String _durationLabel(BuildContext context) {
    final m = (durationSec / 60).round();
    if (m < 60) return S.of(context).historyDurationMins(m);
    final h = m ~/ 60;
    final rem = m % 60;
    return rem == 0 
        ? S.of(context).historyDurationHours(h) 
        : S.of(context).historyDurationHoursMins(h, rem);
  }

  bool get _hasExchange =>
      myComment != null ||
      myScore != null ||
      (myTags != null && myTags!.isNotEmpty) ||
      receivedComment != null ||
      receivedScore != null ||
      (receivedTags != null && receivedTags!.isNotEmpty);

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
                durationLabel: _durationLabel(context),
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
                SizedBox(height: AppSpacing.xs.r),
                Divider(
                  height: 1,
                  color: isDark ? AppColors.dividerDark : AppColors.divider,
                ),
                SizedBox(height: AppSpacing.xs.r),
                _ExpandableRatingSection(
                  myComment: myComment,
                  myScore: myScore,
                  myTags: myTags,
                  receivedComment: receivedComment,
                  receivedScore: receivedScore,
                  receivedTags: receivedTags,
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
                status.getLabel(context),
                style: TextStyle(
                  fontSize: 11.sp,
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
                text: S.of(context).commonCurrencySyria,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: finalFare.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.onSurface,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Compact route visualization: green dot (pickup) ➔ dashed vertical line ➔ red dot (dest).
class _RouteBlock extends StatelessWidget {
  const _RouteBlock({required this.pickupAddress, required this.destAddress});

  final String pickupAddress;
  final String destAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height: 4.r),
            Container(
              width: 8.r,
              height: 8.r,
              decoration: const BoxDecoration(
                color: AppColors.success,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 1.r,
              height: 24.r,
              margin: EdgeInsets.symmetric(vertical: 2.r),
              color: AppColors.divider,
            ),
            Container(
              width: 8.r,
              height: 8.r,
              decoration: const BoxDecoration(
                color: AppColors.danger,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        SizedBox(width: AppSpacing.sm.r),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pickupAddress,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.onSurface,
                ),
              ),
              SizedBox(height: 12.r),
              Text(
                destAddress,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Distance and duration chips side by side.
class _MetaChipsRow extends StatelessWidget {
  const _MetaChipsRow({required this.distanceKm, required this.durationLabel});

  final double distanceKm;
  final String durationLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Chip(
          icon: Icons.straighten_rounded,
          text: S.of(context).radiusKm(distanceKm.toStringAsFixed(1)),
        ),
        SizedBox(width: AppSpacing.xs.r),
        _Chip(icon: Icons.access_time_rounded, text: durationLabel),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.xs.r,
        vertical: (AppSpacing.xs / 2).r,
      ),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(AppRadius.sm.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12.r, color: AppColors.onSurfaceVariant),
          SizedBox(width: 4.r),
          Text(
            text,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

/// Rider info section: avatar, name, phone, and rating.
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
    return Container(
      padding: EdgeInsets.all(AppSpacing.sm.r),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(AppRadius.md.r),
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

class _ExpandableRatingSection extends StatefulWidget {
  const _ExpandableRatingSection({
    this.myComment,
    this.myScore,
    this.myTags,
    this.receivedComment,
    this.receivedScore,
    this.receivedTags,
  });

  final String? myComment;
  final double? myScore;
  final List<String>? myTags;
  final String? receivedComment;
  final double? receivedScore;
  final List<String>? receivedTags;

  @override
  State<_ExpandableRatingSection> createState() =>
      __ExpandableRatingSectionState();
}

class __ExpandableRatingSectionState extends State<_ExpandableRatingSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => setState(() => _isExpanded = !_isExpanded),
          borderRadius: BorderRadius.circular(AppRadius.sm.r),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.r, horizontal: 2.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      size: 16.r,
                      color: AppColors.warning,
                    ),
                    SizedBox(width: 4.r),
                    Text(
                      S.of(context).historyRatingDetails,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 20.r,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          child: _isExpanded
              ? Padding(
                  padding: EdgeInsets.only(top: AppSpacing.xs.r),
                  child: Column(
                    children: [
                      Divider(
                        height: 1,
                        color: isDark
                            ? AppColors.dividerDark
                            : AppColors.divider,
                      ),
                      SizedBox(height: AppSpacing.sm.r),
                      _RatingExchange(
                        myComment: widget.myComment,
                        myScore: widget.myScore,
                        myTags: widget.myTags,
                        receivedComment: widget.receivedComment,
                        receivedScore: widget.receivedScore,
                        receivedTags: widget.receivedTags,
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
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
    this.myTags,
    this.receivedComment,
    this.receivedScore,
    this.receivedTags,
  });

  final String? myComment;
  final double? myScore;
  final List<String>? myTags;
  final String? receivedComment;
  final double? receivedScore;
  final List<String>? receivedTags;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _ExchangeSide(
            label: S.of(context).historyYouRated,
            score: myScore,
            comment: myComment,
            tags: myTags,
          ),
        ),
        SizedBox(width: AppSpacing.md.r),
        Container(width: 1, height: 36.r, color: AppColors.divider),
        SizedBox(width: AppSpacing.md.r),
        Expanded(
          child: _ExchangeSide(
            label: S.of(context).historyRiderRatedYou,
            score: receivedScore,
            comment: receivedComment,
            tags: receivedTags,
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
    this.tags,
  });

  final String label;
  final double? score;
  final String? comment;
  final List<String>? tags;

  @override
  Widget build(BuildContext context) {
    final hasTags = tags != null && tags!.isNotEmpty;
    final hasData = score != null || (comment?.isNotEmpty ?? false) || hasTags;

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
            S.of(context).historyNoRatingYet,
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
          if (hasTags) ...[
            SizedBox(height: 4.r),
            Wrap(
              spacing: 4.r,
              runSpacing: 4.r,
              children: tags!.map((tag) {
                final formatted = tag.replaceAll('_', ' ').toLowerCase();
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.r, vertical: 2.r),
                  decoration: BoxDecoration(
                    color: AppColors.primarySurface,
                    borderRadius: BorderRadius.circular(AppRadius.full.r),
                    border: Border.all(
                      color: AppColors.primaryColor.withValues(alpha: 0.25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.local_offer_rounded,
                        size: 9.r,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(width: 3.r),
                      Text(
                        formatted,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ],
      ],
    );
  }
}
