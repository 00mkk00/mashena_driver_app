import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'setting_item_card.dart';

class LanguageToggleCard extends StatelessWidget {
  final bool isArabic;
  final ValueChanged<bool> onChanged;

  const LanguageToggleCard({
    super.key,
    required this.isArabic,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SettingItemCard(
      title: S.of(context).settingsLanguage,
      subtitle: isArabic ? 'العربية' : 'English',
      icon: Icons.language_rounded,
      trailing: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(AppRadius.full.r),
          border: Border.all(
            color: AppColors.borderColor.withValues(alpha: 0.5),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _LangButton(
              title: 'EN',
              isSelected: !isArabic,
              onTap: () => onChanged(false),
            ),
            _LangButton(
              title: 'AR',
              isSelected: isArabic,
              onTap: () => onChanged(true),
            ),
          ],
        ),
      ),
    );
  }
}

class _LangButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _LangButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(AppRadius.full.r),
        ),
        child: Text(
          title,
          style: AppTextStyles.w600_14.copyWith(
            color: isSelected ? Colors.white : AppColors.textGrey,
          ),
        ),
      ),
    );
  }
}
