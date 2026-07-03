import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumMapPin extends StatelessWidget {
  final List<Color> gradientColors;
  final IconData? iconData;
  final String? text;

  const PremiumMapPin({
    super.key,
    required this.gradientColors,
    this.iconData,
    this.text,
  }) : assert(
         iconData != null || text != null,
         'Must provide either an icon or text',
       );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        boxShadow: [
          // A colored drop shadow looks significantly more premium than a black one
          BoxShadow(
            color: gradientColors.last.withOpacity(0.4),
            blurRadius: 10.r,
            spreadRadius: 2.r,
            offset: Offset(0, 4.r),
          ),
        ],
        // Subtle outer ring
        border: Border.all(
          color: Colors.white,
          width: 2.5.r,
          strokeAlign:
              BorderSide.strokeAlignOutside, // Keeps the inner area spacious
        ),
      ),
      child: Center(
        child: iconData != null
            ? Icon(iconData, color: Colors.white, size: 22.r)
            : Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.r,
                  fontWeight:
                      FontWeight.w800, // Black/Heavy weights look more modern
                  letterSpacing: -0.5,
                ),
              ),
      ),
    );
  }
}
