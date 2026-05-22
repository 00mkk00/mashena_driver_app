import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 20,
      offset: Offset(0, 4),
      spreadRadius: 0,
    ),
    BoxShadow(color: Color(0x08000000), blurRadius: 6, offset: Offset(0, 1)),
  ];

  static const List<BoxShadow> floating = [
    BoxShadow(
      color: Color(0x22000000),
      blurRadius: 30,
      offset: Offset(0, 8),
      spreadRadius: -4,
    ),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(
      color: Color(0x4000C853),
      blurRadius: 16,
      offset: Offset(0, 6),
      spreadRadius: -2,
    ),
  ];
}
