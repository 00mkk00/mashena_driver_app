import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';

class StarRatingWidget extends StatelessWidget {
  final double rating;
  final double size;

  const StarRatingWidget({super.key, required this.rating, this.size = 14});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final filled = i < rating.floor();
        final partial = !filled && i < rating;
        return Icon(
          partial ? Icons.star_half_rounded : Icons.star_rounded,
          size: size.r,
          color: filled || partial ? AppColors.warning : AppColors.divider,
        );
      }),
    );
  }
}
