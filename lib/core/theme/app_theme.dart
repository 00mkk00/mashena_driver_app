import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mashena_driver_app/core/common/extension/pinput_theme_x.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

final class AppTheme {
  const AppTheme._();

  // ── Shared decoration helpers ──────────────────────────────────────────────

  static BoxDecoration _pinDefault(Color border) => BoxDecoration(
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: border),
  );

  static BoxDecoration _pinFocused() => BoxDecoration(
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: AppColors.primaryColor, width: 1.5),
  );

  static BoxDecoration _pinSubmitted() => BoxDecoration(
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: AppColors.primaryColor),
  );

  static BoxDecoration _pinError() => BoxDecoration(
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: AppColors.danger),
  );

  // ── Light ──────────────────────────────────────────────────────────────────

  static ThemeData light(Locale locale) {
    final fontFamily = _fontFamily(locale);

    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: AppColors.primaryLight,
      onSecondary: Colors.white,
      surface: AppColors.cardLight,
      onSurface: AppColors.onSurface,
      error: AppColors.danger,
      onError: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: fontFamily,
      colorScheme: colorScheme,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.lightScaffold,
      cardColor: AppColors.cardLight,
      dividerColor: AppColors.divider,

      // ── AppBar ──────────────────────────────────────────────────────────
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightScaffold,
        foregroundColor: AppColors.onSurface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.w600_18.copyWith(
          color: AppColors.onSurface,
        ),
      ),

      // ── Card ────────────────────────────────────────────────────────────
      cardTheme: CardThemeData(
        color: AppColors.cardLight,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          side: const BorderSide(color: AppColors.divider),
        ),
      ),

      // ── Input ───────────────────────────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.danger),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.danger, width: 1.5),
        ),
        hintStyle: AppTextStyles.w400_14.copyWith(
          color: AppColors.textfieldHintGrey,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      ),

      // ── ElevatedButton ──────────────────────────────────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          minimumSize: Size(double.infinity, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: AppTextStyles.w600_16,
        ),
      ),

      // ── OutlinedButton ──────────────────────────────────────────────────
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          side: const BorderSide(color: AppColors.primaryColor),
          minimumSize: Size(double.infinity, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: AppTextStyles.w600_16,
        ),
      ),

      // ── TextButton ──────────────────────────────────────────────────────
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryColor,
          textStyle: AppTextStyles.w600_14,
        ),
      ),

      // ── Divider ─────────────────────────────────────────────────────────
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 1,
      ),

      // ── Extensions ──────────────────────────────────────────────────────
      extensions: [
        PinputTheme(
          width: 48.w,
          height: 48.w,
          textStyle: AppTextStyles.w600_20,
          defaultDecoration: _pinDefault(AppColors.borderColor),
          focusedDecoration: _pinFocused(),
          submittedDecoration: _pinSubmitted(),
          errorDecoration: _pinError(),
        ),
      ],
    );
  }

  // ── Dark ───────────────────────────────────────────────────────────────────

  static ThemeData dark(Locale locale) {
    final fontFamily = _fontFamily(locale);

    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
      primary: AppColors.primaryLight,
      onPrimary: Colors.white,
      secondary: AppColors.primaryColor,
      onSecondary: Colors.white,
      surface: AppColors.cardDark,
      onSurface: AppColors.onSurfaceDark,
      error: AppColors.danger,
      onError: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: fontFamily,
      colorScheme: colorScheme,
      primaryColor: AppColors.primaryLight,
      scaffoldBackgroundColor: AppColors.darkScaffold,
      cardColor: AppColors.cardDark,
      dividerColor: AppColors.dividerDark,

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkScaffold,
        foregroundColor: AppColors.onSurfaceDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.w600_18.copyWith(
          color: AppColors.onSurfaceDark,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.cardDark,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          side: const BorderSide(color: AppColors.dividerDark),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariantDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.borderColorDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.borderColorDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: AppColors.primaryLight,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.danger),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: AppColors.danger, width: 1.5),
        ),
        hintStyle: AppTextStyles.w400_14.copyWith(
          color: AppColors.textfieldHintGrey,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,
          foregroundColor: Colors.white,
          elevation: 0,
          minimumSize: Size(double.infinity, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: AppTextStyles.w600_16,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryLight,
          side: const BorderSide(color: AppColors.primaryLight),
          minimumSize: Size(double.infinity, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: AppTextStyles.w600_16,
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primaryLight,
          textStyle: AppTextStyles.w600_14,
        ),
      ),

      dividerTheme: const DividerThemeData(
        color: AppColors.dividerDark,
        thickness: 1,
        space: 1,
      ),

      extensions: [
        PinputTheme(
          width: 48.w,
          height: 48.w,
          textStyle: AppTextStyles.w600_20.copyWith(
            color: AppColors.onSurfaceDark,
          ),
          defaultDecoration: _pinDefault(AppColors.borderColorDark),
          focusedDecoration: _pinFocused(),
          submittedDecoration: _pinSubmitted(),
          errorDecoration: _pinError(),
        ),
      ],
    );
  }

  // ── Helpers ────────────────────────────────────────────────────────────────

  static String? _fontFamily(Locale locale) => locale.languageCode == 'ar'
      ? GoogleFonts.cairo().fontFamily
      : GoogleFonts.poppins().fontFamily;
}
