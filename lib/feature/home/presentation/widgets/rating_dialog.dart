import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/widgets/shimmer.dart';
import 'package:mashena_driver_app/feature/home/domain/entities/rating_tag_entity.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/rating_tags_cubit/rating_tags_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/rating_tags_cubit/rating_tags_state.dart';

class RatingResult {
  final int score;
  final String? comment;
  final List<int>? tagIds;

  const RatingResult({required this.score, this.comment, this.tagIds});
}

/// Call this to show the rating bottom sheet. Returns null if dismissed without submit.
Future<RatingResult?> showRatingBottomSheet({
  required BuildContext context,
  String riderName = '',
}) {
  return showModalBottomSheet<RatingResult>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider(
      create: (_) => getIt<RatingTagsCubit>()..fetchTags(),
      child: RatingDialog(riderName: riderName),
    ),
  );
}

class RatingDialog extends StatefulWidget {
  const RatingDialog({super.key, this.riderName = ''});

  final String riderName;

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _score = 0;
  final Set<int> _selectedTagIds = {};
  final TextEditingController _commentController = TextEditingController();
  String? _errorMessage;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  List<RatingTagEntity> _visibleTags(List<RatingTagEntity> tags) => tags;

  void _setScore(int value) {
    setState(() {
      _score = value;
      _errorMessage = null;
    });
  }

  void _toggleTag(int id) {
    setState(() {
      _errorMessage = null;
      if (_selectedTagIds.contains(id)) {
        _selectedTagIds.remove(id);
      } else {
        _selectedTagIds.add(id);
      }
    });
  }

  void _submit() {
    if (_score == 0) return;

    final comment = _commentController.text.trim();
    final hasTags = _selectedTagIds.isNotEmpty;
    final hasComment = comment.isNotEmpty;

    if (_score <= 2 && !hasTags && !hasComment) {
      setState(() {
        _errorMessage =
            'A comment or at least one tag is required for ratings of 2 stars or below.';
      });
      return;
    }

    Navigator.of(context).pop(
      RatingResult(
        score: _score,
        comment: hasComment ? comment : null,
        tagIds: hasTags ? _selectedTagIds.toList() : null,
      ),
    );
  }

  Widget _buildTagSection() {
    return BlocBuilder<RatingTagsCubit, RatingTagsState>(
      builder: (context, state) {
        if (state.isLoading && state.tags.isEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What stood out? (optional)',
                style: AppTextStyles.w600_12.copyWith(
                  color: AppColors.darkScaffold,
                ),
              ),
              SizedBox(height: AppSpacing.xs.h),
              Wrap(
                spacing: AppSpacing.xs.w,
                runSpacing: AppSpacing.xs.h,
                children: [
                  ShimmerCard(height: 28, width: 80.w, borderRadius: 20),
                  ShimmerCard(height: 28, width: 100.w, borderRadius: 20),
                  ShimmerCard(height: 28, width: 70.w, borderRadius: 20),
                  ShimmerCard(height: 28, width: 90.w, borderRadius: 20),
                ],
              ),
            ],
          );
        }

        final visible = _visibleTags(state.tags);

        if (visible.isEmpty && !state.isLoading) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _score > 0 && _score <= 2
                  ? 'What went wrong? (Tag or comment required)'
                  : 'What stood out? (optional)',
              style: AppTextStyles.w600_12.copyWith(
                color: AppColors.darkScaffold,
              ),
            ),
            SizedBox(height: AppSpacing.xs.h),
            Wrap(
              spacing: AppSpacing.xs.w,
              runSpacing: AppSpacing.xs.h,
              children: [
                ...visible.map((tag) {
                  final selected = _selectedTagIds.contains(tag.id);
                  final isPositive = tag.sentiment.toUpperCase() == 'POSITIVE';
                  final baseColor = isPositive
                      ? AppColors.success
                      : AppColors.danger;
                  final surfaceColor = isPositive
                      ? AppColors.successSurface
                      : AppColors.dangerSurface;

                  return GestureDetector(
                    onTap: () => _toggleTag(tag.id),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: selected ? baseColor : surfaceColor,
                        borderRadius: BorderRadius.circular(AppRadius.full.r),
                        border: Border.all(
                          color: selected ? baseColor : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (selected) ...[
                            Icon(
                              Icons.check_rounded,
                              size: 14.r,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4.w),
                          ],
                          Text(
                            tag.name,
                            style: AppTextStyles.w600_12.copyWith(
                              color: selected ? Colors.white : baseColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                if (state.hasMore)
                  GestureDetector(
                    onTap: state.isLoadingMore
                        ? null
                        : () => context.read<RatingTagsCubit>().fetchTags(
                            loadMore: true,
                          ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceVariant,
                        borderRadius: BorderRadius.circular(AppRadius.full.r),
                        border: Border.all(
                          color: AppColors.borderColor.withValues(alpha: 0.4),
                        ),
                      ),
                      child: state.isLoadingMore
                          ? SizedBox(
                              width: 12.r,
                              height: 12.r,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.primaryColor,
                              ),
                            )
                          : Text(
                              'More...',
                              style: AppTextStyles.w600_12.copyWith(
                                color: AppColors.textGrey,
                              ),
                            ),
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Container(
        padding: EdgeInsets.fromLTRB(
          AppSpacing.lg.r,
          AppSpacing.md.r,
          AppSpacing.lg.r,
          AppSpacing.lg.r,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppRadius.xl.r),
            topRight: Radius.circular(AppRadius.xl.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  margin: EdgeInsets.only(bottom: AppSpacing.md.h),
                  decoration: BoxDecoration(
                    color: AppColors.textGrey.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(AppRadius.full.r),
                  ),
                ),
              ),
              Text(
                widget.riderName.isNotEmpty
                    ? 'Rate ${widget.riderName}'
                    : 'Rate Rider',
                style: AppTextStyles.w700_18.copyWith(
                  color: AppColors.darkScaffold,
                ),
              ),
              SizedBox(height: AppSpacing.xs.h),
              Text(
                'Select a rating score for this trip',
                style: AppTextStyles.w400_12.copyWith(
                  color: AppColors.textGrey,
                ),
              ),
              SizedBox(height: AppSpacing.lg.h),
              _StarSelector(score: _score, onChanged: _setScore),
              SizedBox(height: AppSpacing.md.h),
              _buildTagSection(),
              SizedBox(height: AppSpacing.md.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _score > 0 && _score <= 2
                      ? 'Comment (Tag or comment required)'
                      : 'Comment (optional)',
                  style: AppTextStyles.w600_12.copyWith(
                    color: AppColors.darkScaffold,
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.xs.h),
              TextField(
                controller: _commentController,
                onChanged: (_) {
                  if (_errorMessage != null) {
                    setState(() => _errorMessage = null);
                  }
                },
                maxLines: 3,
                maxLength: 300,
                style: AppTextStyles.w400_14.copyWith(
                  color: AppColors.darkScaffold,
                ),
                decoration: InputDecoration(
                  hintText: 'Add a note about this trip…',
                  hintStyle: AppTextStyles.w400_12.copyWith(
                    color: AppColors.textGrey,
                  ),
                  filled: true,
                  fillColor: AppColors.surfaceVariant.withValues(alpha: 0.6),
                  contentPadding: EdgeInsets.all(AppSpacing.sm.r),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                    borderSide: BorderSide(
                      color: AppColors.borderColor.withValues(alpha: 0.4),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                    borderSide: BorderSide(
                      color: AppColors.borderColor.withValues(alpha: 0.4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.lg.h),
              if (_errorMessage != null) ...[
                Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.w400_12.copyWith(
                    color: AppColors.danger,
                  ),
                ),
                SizedBox(height: AppSpacing.sm.h),
              ],
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  onPressed: _score > 0 ? _submit : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    disabledBackgroundColor: AppColors.borderColor.withValues(
                      alpha: 0.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.full.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Submit Rating',
                    style: AppTextStyles.w600_14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Tap-to-select 1-5 stars.
class _StarSelector extends StatelessWidget {
  const _StarSelector({required this.score, required this.onChanged});

  final int score;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final starIndex = i + 1;
        final filled = starIndex <= score;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.xs.r),
          child: GestureDetector(
            onTap: () => onChanged(starIndex),
            child: Icon(
              filled ? Icons.star_rounded : Icons.star_outline_rounded,
              size: 40.r,
              color: filled ? AppColors.warning : AppColors.borderColor,
            ),
          ),
        );
      }),
    );
  }
}
