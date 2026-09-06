import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/settings/presentation/cubits/locale_cubit.dart';
import 'package:mashena_driver_app/feature/settings/presentation/cubits/theme_cubit.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/language_toggle_card.dart';
import 'package:mashena_driver_app/feature/settings/presentation/widgets/theme_toggle_card.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
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
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onSurface,
            ),
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
                    context.read<LocaleCubit>().changeLanguage(
                      val ? 'ar' : 'en',
                    );
                  },
                ),
                BlocBuilder<ThemeCubit, ThemeMode>(
                  builder: (context, mode) {
                    final isDarkMode = isDark;
                    return ThemeToggleCard(
                      isDarkMode: isDarkMode,
                      onChanged: (val) {
                        context.read<ThemeCubit>().toggleTheme(val);
                      },
                    );
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
