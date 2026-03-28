import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mashena_driver_app/app/config/env.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/core/network/network_info.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/core/network/token_manager_impl.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/core/storage/local_storage_impl.dart';
import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/repos/auth_repository_impl.dart';
import 'package:mashena_driver_app/feature/auth/domin/repos/auth_repo.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/get_onboarding_status_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // ======================
  // External
  // ======================
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);

  // Dio واحد للتطبيق كله
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    return dio;
  });

  // ======================
  // Core
  // ======================
  getIt.registerLazySingleton<LocalStorage>(
    () => LocalStorageImpl(getIt<SharedPreferences>()),
  );

  getIt.registerLazySingleton<TokenManager>(
    () => TokenManagerImpl(getIt<SharedPreferences>()),
  );

  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // ApiClient فوق Dio
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      tokenManager: getIt<TokenManager>(),
      dio: getIt<Dio>(),
      baseUrl: Env.baseUrl,
    ),
  );

  // ======================
  // Features: Onboarding
  // ======================
  getIt.registerLazySingleton<CompleteOnboarding>(
    () => CompleteOnboarding(getIt<LocalStorage>()),
  );
  getIt.registerLazySingleton<GetOnboardingStatus>(
    () => GetOnboardingStatus(getIt<LocalStorage>()),
  );
  //============================
  getIt.registerLazySingleton<DriverRemoteDataSource>(
    () => DriverRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<DriverRepository>(
    () => DriverRepositoryImpl(getIt<DriverRemoteDataSource>()),
  );

  // ======================
  // Features: Auth (Data)
  // ======================
  // getIt.registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(getIt<ApiClient>()),
  // );

  // getIt.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     getIt<AuthRemoteDataSource>(),
  //     getIt<ApiClient>(),
  //   ),
  // );

  // // ======================
  // // Features: Auth (Domain)
  // // ======================
  // getIt.registerLazySingleton<SignupUsecase>(
  //   () => SignupUsecase(getIt<AuthRepository>()),
  // );
  // getIt.registerLazySingleton<LoginUsecase>(
  //   () => LoginUsecase(getIt<AuthRepository>()),
  // );
  // getIt.registerLazySingleton<VerifyOtpUsecase>(
  //   () => VerifyOtpUsecase(getIt<AuthRepository>()),
  // );
  // getIt.registerLazySingleton<ResendOtpUsecase>(
  //   () => ResendOtpUsecase(getIt<AuthRepository>()),
  // );
}
