// presentation/widgets/radius_selector_dialog.dart
import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_shadows.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/shared/presentation/cubits/app_settings_cubit/app_settings_cubit.dart';
import 'package:mashena_driver_app/feature/shared/presentation/cubits/app_settings_cubit/app_settings_states.dart';
import 'package:shimmer/shimmer.dart';

class RadiusSelectorDialog extends StatefulWidget {
  final int initialRadius;
  const RadiusSelectorDialog({super.key, required this.initialRadius});

  @override
  State<RadiusSelectorDialog> createState() => _RadiusSelectorDialogState();
}

class _RadiusSelectorDialogState extends State<RadiusSelectorDialog> {
  late int _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialRadius;
    // Trigger API call when dialog opens
    context.read<AppSettingCubit>().loadMaxRadius();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Dialog(
      backgroundColor: isDark ? AppColors.cardDark : AppColors.cardLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.xl.r),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(
          AppSpacing.lg.w,
          AppSpacing.lg.h,
          AppSpacing.lg.w,
          AppSpacing.xl.h,
        ),
        decoration: BoxDecoration(
          color: isDark ? AppColors.cardDark : AppColors.cardLight,
          borderRadius: BorderRadius.circular(AppRadius.xl.r),
          boxShadow: AppShadows.card,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Title row ──────────────────────────────────────
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(AppSpacing.sm.r),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.primaryLight.withValues(alpha: 0.15)
                        : AppColors.primarySurface,
                    borderRadius: BorderRadius.circular(AppRadius.sm.r),
                  ),
                  child: Icon(
                    Icons.radar_rounded,
                    color: isDark
                        ? AppColors.primaryLight
                        : AppColors.primaryColor,
                    size: 20.r,
                  ),
                ),
                SizedBox(width: AppSpacing.sm.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).radiusTitle,
                      style: AppTextStyles.w700_16.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: AppSpacing.xs.h),
                    Text(
                      S.of(context).radiusSubtitle,
                      style: AppTextStyles.w400_12.copyWith(
                        color: isDark
                            ? AppColors.textGreyDark
                            : AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Live km badge
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.primaryLight.withValues(alpha: 0.15)
                        : AppColors.primarySurface,
                    borderRadius: BorderRadius.circular(AppRadius.md.r),
                  ),
                  child: Text(
                    S.of(context).radiusKm(_selected),
                    style: AppTextStyles.w700_16.copyWith(
                      color: isDark
                          ? AppColors.primaryLight
                          : AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: AppSpacing.lg.h),

            // ── Chips (shimmer while loading) ───────────────────
            BlocBuilder<AppSettingCubit, AppSettingsState>(
              builder: (context, settingState) {
                if (settingState.isLoadingRadius) {
                  return _RadiusShimmer();
                }

                return Wrap(
                  spacing: AppSpacing.sm.w,
                  runSpacing: AppSpacing.sm.h,
                  children: settingState.radiusOptions.map((km) {
                    final isSelected = _selected == km;
                    return GestureDetector(
                      onTap: () => setState(() => _selected = km),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.md.w,
                          vertical: AppSpacing.sm.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? (isDark
                                    ? AppColors.primaryLight
                                    : AppColors.primaryColor)
                              : (isDark
                                    ? AppColors.surfaceVariantDark
                                    : AppColors.primarySurface),
                          borderRadius: BorderRadius.circular(AppRadius.full.r),
                          border: Border.all(
                            color: isSelected
                                ? (isDark
                                      ? AppColors.primaryLight
                                      : AppColors.primaryColor)
                                : (isDark
                                      ? AppColors.borderColorDark
                                      : AppColors.borderColor),
                          ),
                        ),
                        child: Text(
                          S.of(context).radiusKm(km),
                          style: AppTextStyles.w600_14.copyWith(
                            color: isSelected
                                ? Colors.white
                                : (isDark
                                      ? AppColors.onSurfaceDark
                                      : AppColors.onSurface),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            SizedBox(height: AppSpacing.lg.h),

            // ── Confirm button ──────────────────────────────────
            BlocBuilder<DriverStatusCubit, DriverStatusState>(
              builder: (context, state) {
                final isLoading = state.isRadiusLoading;
                return SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            context.read<DriverStatusCubit>().updateRadius(
                              _selected,
                            );
                            Navigator.pop(context);
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      disabledBackgroundColor: AppColors.primaryColor
                          .withValues(alpha: 0.5),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.full.r),
                      ),
                    ),
                    child: isLoading
                        ? SizedBox(
                            width: 20.r,
                            height: 20.r,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            S.of(context).radiusConfirm,
                            style: AppTextStyles.w700_14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ── Shimmer placeholder ─────────────────────────────────────────────────────

class _RadiusShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = isDark
        ? AppColors.borderColorDark
        : AppColors.borderColor;
    final highlightColor = isDark
        ? AppColors.surfaceVariantDark
        : AppColors.primarySurface;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Wrap(
        spacing: AppSpacing.sm.w,
        runSpacing: AppSpacing.sm.h,
        // Show 8 fake chips while loading
        children: List.generate(8, (i) {
          // Alternate widths so it feels natural
          final width = i.isEven ? 58.w : 72.w;
          return Container(
            width: width,
            height: 36.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(AppRadius.full.r),
            ),
          );
        }),
      ),
    );
  }
}

// ── Helper ──────────────────────────────────────────────────────────────────

void showRadiusSelectorDialog(BuildContext context, int currentRadius) {
  showDialog(
    context: context,
    builder: (_) => MultiBlocProvider(
      providers: [
        BlocProvider.value(value: context.read<DriverStatusCubit>()),
        BlocProvider.value(value: context.read<AppSettingCubit>()),
      ],
      child: RadiusSelectorDialog(initialRadius: currentRadius),
    ),
  );
}
