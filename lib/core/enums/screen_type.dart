// lib/core/enums/screen_type.dart
import 'package:mashena_driver_app/core/constants/app_breakpoints.dart';

enum ScreenType {
  mobile,
  tablet,
  desktop,
  largeDesktop;

  static ScreenType fromWidth(double width) {
    if (width >= AppBreakpoints.largeDesktop) return ScreenType.largeDesktop;
    if (width >= AppBreakpoints.desktop) return ScreenType.desktop;
    if (width >= AppBreakpoints.mobile) return ScreenType.tablet;
    return ScreenType.mobile;
  }
}
