// lib/core/utils/responsive_utils.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/enums/screen_type.dart';

/// مركز واحد لكل العمليات المتعلقة بالـ Responsive Design
class AppResponsive {
  AppResponsive._();

  // ==================== ScreenUtil Wrapper ====================

  /// Width responsive
  static double w(double width) => width.w;

  /// Height responsive
  static double h(double height) => height.h;

  /// Font size responsive
  static double sp(double fontSize) => fontSize.sp;

  /// Radius responsive
  static double r(double radius) => radius.r;

  // ==================== Screen Info ====================

  /// Screen width
  static double get screenWidth => 1.sw;

  /// Screen height
  static double get screenHeight => 1.sh;

  /// Status bar height
  static double get statusBarHeight => ScreenUtil().statusBarHeight;

  /// Bottom bar height
  static double get bottomBarHeight => ScreenUtil().bottomBarHeight;

  /// Screen width percentage
  static double widthPercent(double percent) {
    return (screenWidth * percent / 100).clamp(0, screenWidth);
  }

  /// Screen height percentage
  static double heightPercent(double percent) {
    return (screenHeight * percent / 100).clamp(0, screenHeight);
  }

  // ==================== Device Type ====================

  /// Get current device type
  static ScreenType get deviceType => ScreenType.fromWidth(screenWidth);

  /// Check if mobile
  static bool get isMobile => deviceType == ScreenType.mobile;

  /// Check if tablet
  static bool get isTablet => deviceType == ScreenType.tablet;

  /// Check if desktop
  static bool get isDesktop =>
      deviceType == ScreenType.desktop || deviceType == ScreenType.largeDesktop;

  /// Check if large desktop
  static bool get isLargeDesktop => deviceType == ScreenType.largeDesktop;

  // ==================== Orientation ====================

  /// Check if landscape
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  /// Check if portrait
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // ==================== Safe Area ====================

  /// Get safe area padding
  static EdgeInsets safeArea(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  /// Get safe area top padding
  static double safeAreaTop(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// Get safe area bottom padding
  static double safeAreaBottom(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  // ==================== Keyboard Insets ====================

  /// Keyboard height (0 if closed)
  static double keyboardInset(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  /// Check if keyboard is open
  static bool isKeyboardOpen(BuildContext context) {
    return keyboardInset(context) > 0;
  }

  /// Padding to avoid keyboard (animated-friendly)
  static EdgeInsets keyboardPadding(BuildContext context) {
    return EdgeInsets.only(bottom: keyboardInset(context));
  }

  // ==================== Responsive Values ====================

  /// Return different values based on device type
  static T responsive<T>({
    required T mobile,
    T? tablet,
    T? desktop,
    T? largeDesktop,
  }) {
    switch (deviceType) {
      case ScreenType.largeDesktop:
        return largeDesktop ?? desktop ?? tablet ?? mobile;
      case ScreenType.desktop:
        return desktop ?? tablet ?? mobile;
      case ScreenType.tablet:
        return tablet ?? mobile;
      case ScreenType.mobile:
        return mobile;
    }
  }

  /// Return value based on orientation
  static T orientation<T>({
    required BuildContext context,
    required T portrait,
    required T landscape,
  }) {
    return isPortrait(context) ? portrait : landscape;
  }
}
