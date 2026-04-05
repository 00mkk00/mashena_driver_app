import 'package:flutter/material.dart';

class PinputTheme extends ThemeExtension<PinputTheme> {
  final double width;
  final double height;
  final TextStyle textStyle;
  final BoxDecoration defaultDecoration;
  final BoxDecoration focusedDecoration;
  final BoxDecoration submittedDecoration;
  final BoxDecoration errorDecoration;

  const PinputTheme({
    required this.width,
    required this.height,
    required this.textStyle,
    required this.defaultDecoration,
    required this.focusedDecoration,
    required this.submittedDecoration,
    required this.errorDecoration,
  });

  @override
  PinputTheme copyWith({
    double? width,
    double? height,
    TextStyle? textStyle,
    BoxDecoration? defaultDecoration,
    BoxDecoration? focusedDecoration,
    BoxDecoration? submittedDecoration,
    BoxDecoration? errorDecoration,
  }) {
    return PinputTheme(
      width: width ?? this.width,
      height: height ?? this.height,
      textStyle: textStyle ?? this.textStyle,
      defaultDecoration: defaultDecoration ?? this.defaultDecoration,
      focusedDecoration: focusedDecoration ?? this.focusedDecoration,
      submittedDecoration: submittedDecoration ?? this.submittedDecoration,
      errorDecoration: errorDecoration ?? this.errorDecoration,
    );
  }

  @override
  PinputTheme lerp(ThemeExtension<PinputTheme>? other, double t) {
    if (other is! PinputTheme) return this;
    return this;
  }
}
