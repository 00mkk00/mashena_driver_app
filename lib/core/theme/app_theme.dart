import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/common/extension/pinput_theme_x.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

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
      extensions: [
        PinputTheme(
          width: 48.w,
          height: 48.w,
          textStyle: AppTextStyles.w600_20,
          defaultDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.borderColor),
          ),
          focusedDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryColor, width: 1.5),
          ),
          submittedDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryColor),
          ),
          errorDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.red),
          ),
        ),
      ],
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
      extensions: [
        PinputTheme(
          width: 48.w,
          height: 48.w,
          textStyle: AppTextStyles.w600_20.copyWith(color: Colors.white),
          defaultDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.borderColor.withValues(alpha: 0.3),
            ),
          ),
          focusedDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryColor, width: 1.5),
          ),
          submittedDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryColor),
          ),
          errorDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
