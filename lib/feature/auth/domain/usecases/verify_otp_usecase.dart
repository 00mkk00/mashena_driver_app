import 'package:mashena_driver_app/feature/auth/domain/params/verify_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class VerifyOtpUseCase {
  final AuthRepository repository;

  VerifyOtpUseCase(this.repository);

  Future<void> call(VerifyOtpParams params) {
    return repository.verifyOtp(params);
  }
}