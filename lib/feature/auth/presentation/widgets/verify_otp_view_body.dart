import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/core/common/extension/pinput_theme_x.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/core/utils/responsive_utils.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/core/widgets/custom_header_button.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_state.dart';
import 'package:pinput/pinput.dart';

class VerificationViewBody extends StatefulWidget {
  const VerificationViewBody({super.key, required this.email});
  final String email;
  // final String phone;

  @override
  State<VerificationViewBody> createState() => _VerificationViewBodyState();
}

class _VerificationViewBodyState extends State<VerificationViewBody> {
  Timer? _resendTimer;

  final ValueNotifier<int> _resendSecondsLeft = ValueNotifier<int>(0);
  final ValueNotifier<bool> _resendLoading = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isOtpValid = ValueNotifier<bool>(false);

  final TextEditingController _otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _otpController.addListener(_onOtpChanged);
    _startResendCooldown(60);
  }

  void _onOtpChanged() {
    final otp = _otpController.text.trim();
    _isOtpValid.value = otp.length == 6;
  }

  @override
  void dispose() {
    _resendTimer?.cancel();
    _resendSecondsLeft.dispose();
    _resendLoading.dispose();
    _otpController.dispose();
    _isOtpValid.dispose();
    super.dispose();
  }

  // ======================
  // Resend OTP
  // ======================
  Future<void> _onResendTap(String email) async {
    context.read<VerifyOtpCubit>().resend(email: email);

    _startResendCooldown(60);
  }

  @override
  Widget build(BuildContext context) {
    final pinputTheme = Theme.of(context).extension<PinputTheme>()!;

    final email = widget.email;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeaderButton(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: AppResponsive.screenHeight * 0.1),

                  Text(S.of(context).otpTitle, style: AppTextStyles.w600_20),

                  const SizedBox(height: 7),

                  Text(
                    S.of(context).otpSubtitle(email),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.w400_16.copyWith(
                      color: AppColors.textGrey,
                    ),
                  ),

                  const SizedBox(height: 48),

                  /// 🔢 OTP Input
                  Pinput(
                    controller: _otpController,
                    length: 6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    defaultPinTheme: PinTheme(
                      width: pinputTheme.width,
                      height: pinputTheme.height,
                      textStyle: pinputTheme.textStyle,
                      decoration: pinputTheme.defaultDecoration,
                    ),
                    focusedPinTheme: PinTheme(
                      width: pinputTheme.width,
                      height: pinputTheme.height,
                      textStyle: pinputTheme.textStyle,
                      decoration: pinputTheme.focusedDecoration,
                    ),
                    submittedPinTheme: PinTheme(
                      width: pinputTheme.width,
                      height: pinputTheme.height,
                      textStyle: pinputTheme.textStyle,
                      decoration: pinputTheme.submittedDecoration,
                    ),
                    errorPinTheme: PinTheme(
                      width: pinputTheme.width,
                      height: pinputTheme.height,
                      textStyle: pinputTheme.textStyle,
                      decoration: pinputTheme.errorDecoration,
                    ),
                  ),
                  const SizedBox(height: 25),

                  /// 🔁 Resend
                  ValueListenableBuilder<int>(
                    valueListenable: _resendSecondsLeft,
                    builder: (context, secondsLeft, _) {
                      return InkWell(
                        onTap: secondsLeft == 0
                            ? () => _onResendTap(email)
                            : null,
                        child: Text(
                          secondsLeft == 0
                              ? S.of(context).otpResend
                              : '${S.of(context).otpResend} (${_formatSeconds(secondsLeft)})',
                          style: AppTextStyles.w600_16.copyWith(
                            color: secondsLeft == 0
                                ? AppColors.primaryColor
                                : AppColors.textGrey,
                          ),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 100.h),

                  /// ✅ Verify Button
                  ValueListenableBuilder<bool>(
                    valueListenable: _isOtpValid,
                    builder: (context, valid, _) {
                      return BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
                        builder: (context, state) {
                          final isLoading = state.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          );

                          return CustomElevatedButton(
                            isLoading: isLoading,
                            title: S.of(context).otpVerifyNow,
                            onPressed: valid
                                ? () {
                                    final otp = _otpController.text.trim();

                                    context.read<VerifyOtpCubit>().verify(
                                      email: email,
                                      code: otp,
                                    );
                                  }
                                : null,
                          );
                        },
                      );
                    },
                  ),

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ======================
  // Timer
  // ======================
  void _startResendCooldown([int seconds = 60]) {
    _resendTimer?.cancel();
    _resendSecondsLeft.value = seconds;

    _resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final next = _resendSecondsLeft.value - 1;

      if (next <= 0) {
        timer.cancel();
        _resendSecondsLeft.value = 0;
      } else {
        _resendSecondsLeft.value = next;
      }
    });
  }

  String _formatSeconds(int s) {
    final m = (s ~/ 60).toString().padLeft(2, '0');
    final sec = (s % 60).toString().padLeft(2, '0');
    return '$m:$sec';
  }
}
