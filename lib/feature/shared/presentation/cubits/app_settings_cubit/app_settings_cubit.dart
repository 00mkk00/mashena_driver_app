// shared/presentation/cubit/app_setting_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/shared/domain/params/app_settings_params.dart';
import 'package:mashena_driver_app/feature/shared/domain/use_cases/app_settings_use_case.dart';
import 'package:mashena_driver_app/feature/shared/presentation/cubits/app_settings_cubit/app_settings_states.dart';



class AppSettingCubit extends Cubit<AppSettingsState> {
  final GetAppSettingUseCase _getAppSettingUseCase;

  AppSettingCubit(this._getAppSettingUseCase)
      : super(const AppSettingsState());

  /// Call this when the radius dialog opens.
  Future<void> loadMaxRadius() async {
    emit(state.copyWith(isLoadingRadius: true, radiusOptions: []));

    final result = await _getAppSettingUseCase(
      const GetAppSettingParams(key: 'dispatch.maxRadiusKm'),
    );

    result.fold(
      (failure) => emit(state.copyWith(isLoadingRadius: false)),
      (setting) {
        final maxKm = int.tryParse(setting.value) ?? 20;
        // Generate [1, 2, 3, ..., maxKm]
        final options = List.generate(maxKm, (i) => i + 1);
        emit(state.copyWith(isLoadingRadius: false, radiusOptions: options));
      },
    );
  }
}