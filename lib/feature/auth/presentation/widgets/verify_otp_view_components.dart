import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';


class OtpInputRowWidget extends StatelessWidget {
  final List<String> otpDigits;
  final int currentIndex;

  const OtpInputRowWidget({
    super.key,
    required this.otpDigits,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: _OtpBox(
              digit: otpDigits[index],
              isActive: index == currentIndex,
              isFilled: otpDigits[index].isNotEmpty,
            ),
          ),
        ),
      ),
    );
  }
}

class _OtpBox extends StatelessWidget {
  final String digit;
  final bool isActive;
  final bool isFilled;

  const _OtpBox({
    required this.digit,
    required this.isActive,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    final bool showBorder = isActive || isFilled;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: 64.w,
      height: 64.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: showBorder ? AppColors.primaryColor : AppColors.borderColor,
          width: showBorder ? 2 : 1.5,
        ),
        boxShadow: isFilled
            ? [
                BoxShadow(
                  color: AppColors.primaryColor.withValues(alpha: 0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Center(
        child: Text(
          digit,
          style: AppTextStyles.w600_24.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}



class OtpResendWidget extends StatelessWidget {
  final VoidCallback onResend;

  const OtpResendWidget({
    super.key,
    required this.onResend,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: AppTextStyles.w400_14.copyWith(color: Colors.black87),
          children: [
            const TextSpan(text: "Don't receive a code? "),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: onResend,
                child: Text(
                  'Resend',
                  style: AppTextStyles.w700_14.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class OtpVerifyButtonWidget extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onVerify;

  const OtpVerifyButtonWidget({
    super.key,
    required this.isEnabled,
    required this.onVerify,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: AnimatedOpacity(
        opacity: isEnabled ? 1.0 : 0.6,
        duration: const Duration(milliseconds: 200),
        child: GestureDetector(
          onTap: isEnabled ? onVerify : null,
          child: Container(
            width: double.infinity,
            height: 56.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Center(
              child: Text(
                'Verify Now',
                style: AppTextStyles.w600_18.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}