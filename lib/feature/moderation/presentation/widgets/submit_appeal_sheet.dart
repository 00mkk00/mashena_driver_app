import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/moderation/domain/entities/penalty_entity.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/appeals_cubit/appeals_cubit.dart';
import 'package:mashena_driver_app/feature/moderation/presentation/cubits/appeals_cubit/appeals_state.dart';

class SubmitAppealSheet extends StatefulWidget {
  final PenaltyEntity penalty;
  final VoidCallback onAppealSubmitted;

  const SubmitAppealSheet({
    super.key,
    required this.penalty,
    required this.onAppealSubmitted,
  });

  static Future<void> show(
    BuildContext context, {
    required PenaltyEntity penalty,
    required VoidCallback onAppealSubmitted,
  }) {
    final appealsCubit = context.read<AppealsCubit>();

    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) => BlocProvider.value(
        value: appealsCubit,
        child: SubmitAppealSheet(
          penalty: penalty,
          onAppealSubmitted: onAppealSubmitted,
        ),
      ),
    );
  }

  @override
  State<SubmitAppealSheet> createState() => _SubmitAppealSheetState();
}

class _SubmitAppealSheetState extends State<SubmitAppealSheet> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();
  final _evidenceController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    _evidenceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = S.of(context);
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return BlocConsumer<AppealsCubit, AppealsState>(
      listener: (context, state) {
        if (state.submissionStatus == AppealSubmissionStatus.success) {
          context.showSuccessToast(l10n.moderationAppealSuccess);
          context.read<AppealsCubit>().resetSubmissionStatus();
          widget.onAppealSubmitted();
          Navigator.pop(context);
        } else if (state.submissionStatus == AppealSubmissionStatus.failure) {
          context.showErrorToast(
            state.submissionErrorMessage ?? l10n.moderationAppealFailure,
          );
        }
      },
      builder: (context, state) {
        final isLoading = state.submissionStatus == AppealSubmissionStatus.loading;

        return Container(
          padding: EdgeInsets.only(
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            top: AppSpacing.md,
            bottom: AppSpacing.lg + bottomInset,
          ),
          decoration: BoxDecoration(
            color: isDark ? AppColors.cardDark : AppColors.cardLight,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppRadius.xl),
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Handle bar
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor,
                        borderRadius: BorderRadius.circular(AppRadius.full),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Title
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.primarySurface,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.rate_review_outlined,
                          color: AppColors.primaryColor,
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.moderationSubmitAppeal,
                              style: AppTextStyles.w700_18.copyWith(
                                color: isDark
                                    ? AppColors.onSurfaceDark
                                    : AppColors.onSurface,
                              ),
                            ),
                            Text(
                              'Penalty #${widget.penalty.id} · ${widget.penalty.rawPenaltyType}',
                              style: AppTextStyles.w400_12.copyWith(
                                color: isDark
                                    ? AppColors.textGreyDark
                                    : AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_rounded),
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Penalty Reason Banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.sm),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(AppRadius.md),
                      border: Border.all(
                        color: isDark
                            ? AppColors.borderColorDark
                            : AppColors.borderColor,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.moderationLinkedPenalty,
                          style: AppTextStyles.w600_12.copyWith(
                            color: isDark
                                ? AppColors.textGreyDark
                                : AppColors.textGrey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.penalty.reason,
                          style: AppTextStyles.w500_12.copyWith(
                            color: isDark
                                ? AppColors.onSurfaceDark
                                : AppColors.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Reason Input
                  Text(
                    l10n.moderationAppealReason,
                    style: AppTextStyles.w600_14.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  TextFormField(
                    controller: _reasonController,
                    maxLines: 4,
                    maxLength: 500,
                    decoration: InputDecoration(
                      hintText: l10n.moderationAppealReasonHint,
                      hintStyle: AppTextStyles.w400_14.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                      filled: true,
                      fillColor: isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.surfaceVariant,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: BorderSide(
                          color: isDark
                              ? AppColors.borderColorDark
                              : AppColors.borderColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: BorderSide(
                          color: isDark
                              ? AppColors.borderColorDark
                              : AppColors.borderColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.trim().length < 10) {
                        return l10n.moderationReasonValidation;
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: AppSpacing.sm),

                  // Evidence Input (Optional)
                  Text(
                    l10n.moderationAppealEvidence,
                    style: AppTextStyles.w600_14.copyWith(
                      color: isDark
                          ? AppColors.onSurfaceDark
                          : AppColors.onSurface,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  TextFormField(
                    controller: _evidenceController,
                    decoration: InputDecoration(
                      hintText: l10n.moderationAppealEvidenceHint,
                      hintStyle: AppTextStyles.w400_14.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                      filled: true,
                      fillColor: isDark
                          ? AppColors.surfaceVariantDark
                          : AppColors.surfaceVariant,
                      prefixIcon: const Icon(
                        Icons.link_rounded,
                        size: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: BorderSide(
                          color: isDark
                              ? AppColors.borderColorDark
                              : AppColors.borderColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: BorderSide(
                          color: isDark
                              ? AppColors.borderColorDark
                              : AppColors.borderColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadius.md),
                        borderSide: const BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: AppSpacing.lg),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: isLoading ? null : _submit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.md),
                        ),
                        elevation: 0,
                      ),
                      child: isLoading
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              l10n.moderationAppealSubmitBtn,
                              style: AppTextStyles.w600_16.copyWith(
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AppealsCubit>().submitAppeal(
            penaltyId: widget.penalty.id,
            reason: _reasonController.text.trim(),
            evidence: _evidenceController.text.trim().isNotEmpty
                ? _evidenceController.text.trim()
                : null,
          );
    }
  }
}
