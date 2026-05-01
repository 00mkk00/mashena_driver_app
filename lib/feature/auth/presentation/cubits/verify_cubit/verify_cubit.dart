import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final VerifyOtpUseCase verifyOtpUseCase;
  final SendOtpUseCase sendOtpUseCase;

  VerifyOtpCubit({
    required this.verifyOtpUseCase,
    required this.sendOtpUseCase,
  }) : super(const VerifyOtpState.initial());

  Future<void> verify({
    required String email,
    required String code,
  }) async {
    emit(const VerifyOtpState.loading());

    try {
      await verifyOtpUseCase(
        VerifyOtpParams(
          email: email,
          code: code,
        ),
      );

      emit(const VerifyOtpState.success());
    } catch (e) {
      emit(VerifyOtpState.error(e.toString()));
    }
  }

  Future<void> resend({
    required String email,
  }) async {
    try {
      await sendOtpUseCase(
        SendOtpParams(
          email: email,
        ),
      );
    } catch (e) {
      emit(VerifyOtpState.error(e.toString()));
    }
  }
}