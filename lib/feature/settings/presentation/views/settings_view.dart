import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/language_toggle_card.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/theme_toggle_card.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  // Temporary state for UI demonstration
  bool _isArabic = false;
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: AppTextStyles.w700_18.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(AppSpacing.lg.r),
          children: [
            Text(
              'Preferences',
              style: AppTextStyles.w600_16.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            SizedBox(height: AppSpacing.md.h),
            LanguageToggleCard(
              isArabic: _isArabic,
              onChanged: (val) {
                setState(() => _isArabic = val);
                // Call your LanguageCubit to update the state here
              },
            ),
            ThemeToggleCard(
              isDarkMode: _isDarkMode,
              onChanged: (val) {
                setState(() => _isDarkMode = val);
                // Call your ThemeCubit to update the state here
              },
            ),
          ],
        ),
      ),
    );
  }
}
