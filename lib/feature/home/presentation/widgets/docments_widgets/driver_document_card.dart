import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/image_url_helper.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/driver_document_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/widgets/docments_widgets/document_image_preview_dialog.dart';

class DriverDocumentCard extends StatefulWidget {
  final DriverDocumentEntity document;

  const DriverDocumentCard({super.key, required this.document});

  @override
  State<DriverDocumentCard> createState() => _DriverDocumentCardState();
}

class _DriverDocumentCardState extends State<DriverDocumentCard> {
  bool _isExpanded = false;

  String _getDocTitle(DriverDocType docType) {
    switch (docType) {
      case DriverDocType.license:
        return 'Driver License';
      case DriverDocType.insurance:
        return 'Vehicle Insurance';
      case DriverDocType.mechanic:
        return 'Mechanic Card';
      case DriverDocType.identity:
        return 'National Identity Card';
      case DriverDocType.other:
        return 'Other Document';
    }
  }

  IconData _getDocIcon(DriverDocType docType) {
    switch (docType) {
      case DriverDocType.license:
        return Icons.badge_rounded;
      case DriverDocType.insurance:
        return Icons.verified_user_rounded;
      case DriverDocType.mechanic:
        return Icons.build_rounded;
      case DriverDocType.identity:
        return Icons.badge_outlined;
      case DriverDocType.other:
        return Icons.description_rounded;
    }
  }

  String _formatDate(String isoString) {
    if (isoString.isEmpty) return 'N/A';
    try {
      final dateTime = DateTime.parse(isoString);
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    } catch (_) {
      return isoString.split('T').first;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final doc = widget.document;
    final title = _getDocTitle(doc.docType);

    Color statusColor;
    Color statusBgColor;
    IconData statusIcon;
    String statusText;

    switch (doc.status) {
      case DriverDocStatus.approved:
        statusColor = AppColors.success;
        statusBgColor = AppColors.successSurface;
        statusIcon = Icons.check_circle_rounded;
        statusText = 'Verified';
        break;
      case DriverDocStatus.rejected:
        statusColor = AppColors.danger;
        statusBgColor = AppColors.dangerSurface;
        statusIcon = Icons.cancel_rounded;
        statusText = 'Rejected';
        break;
      case DriverDocStatus.expired:
        statusColor = AppColors.warningDark;
        statusBgColor = AppColors.warningSurface;
        statusIcon = Icons.event_busy_rounded;
        statusText = 'Expired';
        break;
      case DriverDocStatus.pending:
        statusColor = AppColors.warningDark;
        statusBgColor = AppColors.warningSurface;
        statusIcon = Icons.hourglass_top_rounded;
        statusText = 'Pending Approval';
        break;
    }

    final formattedFileUrl = ImageUrlHelper.formatImageUrl(doc.fileUrl);

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isDark ? AppColors.borderColorDark : AppColors.borderColor.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Header & Status
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    _getDocIcon(doc.docType),
                    color: statusColor,
                    size: 22.r,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.w600_16.copyWith(
                          color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: isDark ? statusColor.withValues(alpha: 0.15) : statusBgColor,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(statusIcon, size: 12.r, color: statusColor),
                                SizedBox(width: 4.w),
                                Text(
                                  statusText,
                                  style: AppTextStyles.w700_12.copyWith(
                                    color: statusColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (formattedFileUrl.isNotEmpty)
                  GestureDetector(
                    onTap: () => DocumentImagePreviewDialog.show(
                      context,
                      imageUrl: formattedFileUrl,
                      title: title,
                    ),
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.primaryColor.withValues(alpha: 0.3)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9.r),
                        child: Image.network(
                          formattedFileUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Icon(
                            Icons.insert_drive_file_outlined,
                            color: AppColors.textGrey,
                            size: 24.r,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Rejection Reason callout if rejected
          if (doc.status == DriverDocStatus.rejected && doc.rejectionReason.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
              child: Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: AppColors.dangerSurface,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.danger.withValues(alpha: 0.3)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.warning_amber_rounded, color: AppColors.danger, size: 18.r),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rejection Reason',
                            style: AppTextStyles.w700_12.copyWith(color: AppColors.danger),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            doc.rejectionReason,
                            style: AppTextStyles.w400_12.copyWith(
                              color: AppColors.dangerDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          SizedBox(height: 8.h),
          const Divider(height: 1),

          // Dates Grid
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Row(
              children: [
                Expanded(
                  child: _buildInfoItem(
                    context,
                    label: 'Issued Date',
                    value: _formatDate(doc.issuedAt),
                    icon: Icons.calendar_today_rounded,
                    isDark: isDark,
                  ),
                ),
                Expanded(
                  child: _buildInfoItem(
                    context,
                    label: 'Expiry Date',
                    value: _formatDate(doc.expiresAt),
                    icon: Icons.event_repeat_rounded,
                    isDark: isDark,
                  ),
                ),
              ],
            ),
          ),

          // Expandable metadata toggle
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: isDark ? AppColors.surfaceVariantDark.withValues(alpha: 0.5) : AppColors.surfaceVariant,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _isExpanded ? 'Hide Technical Details' : 'View Details',
                    style: AppTextStyles.w500_12.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                    color: AppColors.primaryColor,
                    size: 20.r,
                  ),
                ],
              ),
            ),
          ),

          if (_isExpanded)
            Container(
              padding: EdgeInsets.all(16.r),
              color: isDark ? AppColors.surfaceVariantDark : AppColors.surfaceVariant.withValues(alpha: 0.4),
              child: Column(
                children: [
                  _buildDetailRow(context, label: 'Document ID', value: '#${doc.id}', isDark: isDark),
                  _buildDetailRow(context, label: 'Driver Profile ID', value: '#${doc.driverProfileId}', isDark: isDark),
                  if (doc.verifiedBy > 0)
                    _buildDetailRow(context, label: 'Verified By Admin ID', value: '#${doc.verifiedBy}', isDark: isDark),
                  if (doc.verifiedAt.isNotEmpty)
                    _buildDetailRow(context, label: 'Verified At', value: _formatDate(doc.verifiedAt), isDark: isDark),
                  if (doc.createdAt.isNotEmpty)
                    _buildDetailRow(context, label: 'Uploaded At', value: _formatDate(doc.createdAt), isDark: isDark),
                  if (doc.metaJson.isNotEmpty)
                    _buildDetailRow(context, label: 'Meta JSON', value: doc.metaJson.toString(), isDark: isDark),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    BuildContext context, {
    required String label,
    required String value,
    required IconData icon,
    required bool isDark,
  }) {
    return Row(
      children: [
        Icon(icon, size: 16.r, color: AppColors.textGrey),
        SizedBox(width: 6.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyles.w400_10.copyWith(
                color: AppColors.textGrey,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              value,
              style: AppTextStyles.w600_12.copyWith(
                color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    required String label,
    required String value,
    required bool isDark,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTextStyles.w400_12.copyWith(
              color: AppColors.textGrey,
            ),
          ),
          Text(
            value,
            style: AppTextStyles.w500_12.copyWith(
              color: isDark ? AppColors.onSurfaceDark : AppColors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
