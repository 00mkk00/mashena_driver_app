import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class WaitTimerView extends StatelessWidget {
  final int totalSeconds;

  const WaitTimerView({super.key, required this.totalSeconds});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: totalSeconds.toDouble(), end: 0),
      duration: Duration(seconds: totalSeconds),
      builder: (context, value, child) {
        final remaining = value.ceil();
        final minutes = (remaining / 60).floor().toString().padLeft(2, '0');
        final seconds = (remaining % 60).toString().padLeft(2, '0');

        final isPositive = remaining > 0;

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: AppSpacing.sm.h,
            horizontal: AppSpacing.md.w,
          ),
          decoration: BoxDecoration(
            color: isPositive ? Colors.green.shade50 : Colors.red.shade50,
            borderRadius: BorderRadius.circular(AppRadius.md.r),
            border: Border.all(
              color: isPositive ? Colors.green.shade200 : Colors.red.shade200,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer_outlined,
                color: isPositive ? Colors.green.shade700 : Colors.red.shade700,
                size: 20.r,
              ),
              SizedBox(width: AppSpacing.sm.w),
              Text(
                isPositive
                    ? 'Free wait time: $minutes:$seconds'
                    : 'Wait time exceeded',
                style: AppTextStyles.w700_14.copyWith(
                  color: isPositive
                      ? Colors.green.shade700
                      : Colors.red.shade700,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
