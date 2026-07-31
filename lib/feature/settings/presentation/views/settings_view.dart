import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/settings/presentation/cubits/locale_cubit.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/language_toggle_card.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/theme_toggle_card.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  // Temporary state for UI demonstration
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, locale) {
        final isArabic = locale.languageCode == 'ar';
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              S.of(context).settingsSettings,
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
                  S.of(context).settingsPreferences,
                  style: AppTextStyles.w600_16.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: AppSpacing.md.h),
                LanguageToggleCard(
                  isArabic: isArabic,
                  onChanged: (val) {
                    context.read<LocaleCubit>().changeLanguage(val ? 'ar' : 'en');
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
      },
    );
  }
}
