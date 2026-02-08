import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/enums/screen_type.dart';
import 'package:mashena_driver_app/core/utils/responsive_utils.dart';

extension ResponsiveContext on BuildContext {
  /// Screen width
  double get screenWidth => AppResponsive.screenWidth;

  /// Screen height
  double get screenHeight => AppResponsive.screenHeight;

  /// Device type
  ScreenType get deviceType => AppResponsive.deviceType;

  /// Is mobile
  bool get isMobile => AppResponsive.isMobile;

  /// Is tablet
  bool get isTablet => AppResponsive.isTablet;

  /// Is desktop
  bool get isDesktop => AppResponsive.isDesktop;

  /// Safe area
  EdgeInsets get safeArea => AppResponsive.safeArea(this);

  /// Is landscape
  bool get isLandscape => AppResponsive.isLandscape(this);

  /// Is portrait
  bool get isPortrait => AppResponsive.isPortrait(this);
}
