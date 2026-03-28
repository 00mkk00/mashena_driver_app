import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/auth/domin/params/create_driver_params.dart';
import 'package:mashena_driver_app/feature/auth/domin/usecases/signup_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final CreateDriverUseCase createDriverUseCase;

  SignupCubit(this.createDriverUseCase)
      : super(const SignupState.initial());

  Future<void> signup({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password,
    required String city,
  }) async {
    emit(const SignupState.loading());

    try {
      final params = CreateDriverParams(
        fullName: fullName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        city: city,
      );

      final result = await createDriverUseCase(params);

      emit(SignupState.success(result));
    } catch (e) {
      emit(SignupState.error(e.toString()));
    }
  }
}