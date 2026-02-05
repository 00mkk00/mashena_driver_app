import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';

final class AppTheme {
  const AppTheme._();

  static ThemeData light(Locale locale) {
    final isArabic = locale.languageCode == 'ar';

    final fontFamily = isArabic
        ? GoogleFonts.cairo().fontFamily
        : GoogleFonts.poppins().fontFamily;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: fontFamily,
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
      primaryColor: AppColors.primaryColor,
    );
  }

  static ThemeData dark(Locale locale) {
    final isArabic = locale.languageCode == 'ar';

    final fontFamily = isArabic
        ? GoogleFonts.cairo().fontFamily
        : GoogleFonts.poppins().fontFamily;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: fontFamily,
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
      primaryColor: AppColors.primaryColor,
    );
  }
}
