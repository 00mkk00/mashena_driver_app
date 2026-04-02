import 'package:dartz/dartz.dart';
import 'package:mashena_driver_app/core/errors/failure.dart';
import 'package:mashena_driver_app/feature/auth/domain/params/send_otp_params.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';

class SendOtpUseCase {
  final AuthRepository repository;

  SendOtpUseCase(this.repository);

  Future<Either<Failure,void>> call(SendOtpParams params) {
    return repository.sendOtp(params);
  }
}