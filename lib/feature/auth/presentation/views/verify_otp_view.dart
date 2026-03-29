import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_body.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_header.dart';

class OtpPage extends StatefulWidget {
  final String phoneNumber;

  const OtpPage({super.key, this.phoneNumber = '+91 4545454710'});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final List<String> _otpDigits = ['', '', '', ''];
  int _currentIndex = 0;

  void _onVerify() {
    final otp = _otpDigits.join();
    if (otp.length == 4) {
      // Handle verification
      debugPrint('OTP entered: $otp');
    }
  }

  void _onResend() {
    setState(() {
      _otpDigits.fillRange(0, 4, '');
      _currentIndex = 0;
    });
    debugPrint('Resend OTP tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffold,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button
            Padding(
              padding: EdgeInsets.all(16.w),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 44.w,
                  height: 44.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.chevron_left,
                    size: 22.sp,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            SizedBox(height: 32.h),

            // Header: title + subtitle
            OtpHeaderWidget(phoneNumber: widget.phoneNumber),

            SizedBox(height: 32.h),

            // OTP input boxes
            OtpInputRowWidget(
              otpDigits: _otpDigits,
              currentIndex: _currentIndex,
            ),

            SizedBox(height: 20.h),

            // Resend row
            OtpResendWidget(onResend: _onResend),

            const Spacer(),

            // Verify button
            OtpVerifyButtonWidget(
              isEnabled: _currentIndex == 4,
              onVerify: _onVerify,
            ),

            SizedBox(height: 16.h),

            // Divider
            Divider(color: AppColors.borderColor, thickness: 1),

            // Custom numpad
          ],
        ),
      ),
    );
  }
}
