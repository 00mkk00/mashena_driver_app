import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_radius.dart';
import 'package:mashena_driver_app/core/theme/app_spacing.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';

class WaitTimerView extends StatelessWidget {
  final int totalSeconds;

  const WaitTimerView({super.key, required this.totalSeconds});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: totalSeconds.toDouble(), end: 0),
      duration: Duration(seconds: totalSeconds),
      builder: (context, value, child) {
        final remaining = value.ceil();
        final minutes = (remaining / 60).floor().toString().padLeft(2, '0');
        final seconds = (remaining % 60).toString().padLeft(2, '0');

        final isPositive = remaining > 0;
        final bg = isPositive
            ? (isDark
                  ? Colors.green.shade900.withValues(alpha: 0.3)
                  : Colors.green.shade50)
            : (isDark
                  ? Colors.red.shade900.withValues(alpha: 0.3)
                  : Colors.red.shade50);
        final border = isPositive
            ? (isDark ? Colors.green.shade700 : Colors.green.shade200)
            : (isDark ? Colors.red.shade700 : Colors.red.shade200);
        final textColor = isPositive
            ? (isDark ? Colors.green.shade300 : Colors.green.shade700)
            : (isDark ? Colors.red.shade300 : Colors.red.shade700);

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: AppSpacing.sm.h,
            horizontal: AppSpacing.md.w,
          ),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(AppRadius.md.r),
            border: Border.all(color: border),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.timer_outlined, color: textColor, size: 20.r),
              SizedBox(width: AppSpacing.sm.w),
              Text(
                isPositive
                    ? S.of(context).tripFreeWaitTime('$minutes:$seconds')
                    : S.of(context).tripWaitTimeExceeded,
                style: AppTextStyles.w700_14.copyWith(color: textColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
