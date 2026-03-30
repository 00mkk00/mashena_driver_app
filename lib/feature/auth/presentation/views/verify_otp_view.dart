import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_components.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/verify_otp_view_header.dart';

class VerifyOtpView extends StatefulWidget {
  final String phoneNumber;
  final String email;

  const VerifyOtpView({
    super.key,
    required this.phoneNumber,
    required this.email,
  });

  @override
  State<VerifyOtpView> createState() => _VerifyOtpViewState();
}

class _VerifyOtpViewState extends State<VerifyOtpView> {
  final List<String> _otpDigits = ['', '', '', ''];
  int _currentIndex = 0;

  // ======================
  // Verify OTP
  // ======================
  void _onVerify() {
    final otp = _otpDigits.join();

    if (otp.length == 4) {
      context.read<VerifyOtpCubit>().verify(
            email: widget.email,
            phone: widget.phoneNumber,
            code: otp,
          );
    }
  }

  // ======================
  // Resend OTP
  // ======================
  void _onResend() {
    setState(() {
      _otpDigits.fillRange(0, 4, '');
      _currentIndex = 0;
    });

    context.read<VerifyOtpCubit>().resend(
          email: widget.email,
          phone: widget.phoneNumber,
        );
  }

  // ======================
  // Handle digit input
  // ======================
  void _onDigitTap(String value) {
    if (_currentIndex < 4) {
      setState(() {
        _otpDigits[_currentIndex] = value;
        _currentIndex++;
      });

      // 🔥 Auto verify لما يكتمل
      if (_currentIndex == 4) {
        _onVerify();
      }
    }
  }

  void _onBackspace() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _otpDigits[_currentIndex] = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyOtpCubit, VerifyOtpState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          success: () {
            Navigator.pop(context); // close loader
            context.go("/home"); // عدّل حسب route عندك
          },
          error: (message) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.lightScaffold,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🔙 Back Button
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

              /// 🧾 Header
              OtpHeaderWidget(phoneNumber: widget.phoneNumber),

              SizedBox(height: 32.h),

              /// 🔢 OTP Inputs
              OtpInputRowWidget(
                otpDigits: _otpDigits,
                currentIndex: _currentIndex,
              ),

              SizedBox(height: 20.h),

              /// 🔁 Resend
              OtpResendWidget(onResend: _onResend),

              const Spacer(),

              /// ✅ Verify Button
              OtpVerifyButtonWidget(
                isEnabled: _currentIndex == 4,
                onVerify: _onVerify,
              ),

              SizedBox(height: 16.h),

              Divider(color: AppColors.borderColor, thickness: 1),

              /// 🔢 Custom Numpad
              _buildNumpad(),
            ],
          ),
        ),
      ),
    );
  }

  // ======================
  // Custom Numpad
  // ======================
  Widget _buildNumpad() {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          _buildRow(['1', '2', '3']),
          _buildRow(['4', '5', '6']),
          _buildRow(['7', '8', '9']),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildKey(''),
              _buildKey('0'),
              _buildBackspace(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRow(List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: numbers.map((e) => _buildKey(e)).toList(),
    );
  }

  Widget _buildKey(String number) {
    return GestureDetector(
      onTap: number.isEmpty ? null : () => _onDigitTap(number),
      child: Container(
        width: 70.w,
        height: 70.w,
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBackspace() {
    return GestureDetector(
      onTap: _onBackspace,
      child: SizedBox(
        width: 70.w,
        height: 70.w,
        child: Icon(Icons.backspace_outlined, size: 24.sp),
      ),
    );
  }
}