import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';


class OtpHeaderWidget extends StatelessWidget {
  final String phoneNumber;

  const OtpHeaderWidget({
    super.key,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Enter verification code',
              style: AppTextStyles.w600_24.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: AppTextStyles.w400_14.copyWith(
                  color: AppColors.textGrey,
                ),
                children: [
                  const TextSpan(text: 'A code has been sent to '),
                  TextSpan(
                    text: phoneNumber,
                    style: AppTextStyles.w600_14.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}