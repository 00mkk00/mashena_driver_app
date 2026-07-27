import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mashena_driver_app/app/config/env.dart';
import 'package:mashena_driver_app/core/network/dio_client.dart';
import 'package:mashena_driver_app/core/network/network_info.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/core/network/token_manager_impl.dart';
import 'package:mashena_driver_app/core/storage/local_storage.dart';
import 'package:mashena_driver_app/core/storage/local_storage_impl.dart';
import 'package:mashena_driver_app/core/utils/image_picker.dart';
import 'package:mashena_driver_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mashena_driver_app/feature/auth/data/repos/auth_repository_impl.dart';
import 'package:mashena_driver_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/logout_use_case.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/signup_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/upload_docs.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:mashena_driver_app/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:mashena_driver_app/feature/home/data/repository/home_repository_impl.dart';
import 'package:mashena_driver_app/feature/home/data/services/routing_service.dart';
import 'package:mashena_driver_app/feature/home/data/services/socket_service.dart';
import 'package:mashena_driver_app/feature/home/domain/repository/home_repository.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/arrive_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/cancel_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/complete_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_trip_history_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_documents_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_driver_wallet_summary_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_ride_request_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/go_offline_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/go_online_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/get_rating_tags_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/rate_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/start_trip_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/update_location_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/usecases/update_radius_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_documents_cubit/driver_documents_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_wallet_cubit/driver_wallet_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/rating_tags_cubit/rating_tags_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/trip_history_cubit/trip_history_cubit.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/get_onboarding_status_usecase.dart';
import 'package:mashena_driver_app/feature/shared/data/data_source/shared_remote_data_source.dart';
import 'package:mashena_driver_app/feature/shared/domain/repository/shared_repo.dart';
import 'package:mashena_driver_app/feature/shared/domain/use_cases/app_settings_use_case.dart';
import 'package:mashena_driver_app/feature/shared/presentation/cubits/app_settings_cubit/app_settings_cubit.dart';
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

  getIt.registerLazySingleton<ImagePickerService>(() => ImagePickerService());
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

  // ======================
  // Features: Auth (Data)
  // ======================
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt<AuthRemoteDataSource>(),
      getIt<ApiClient>(),
      getIt<TokenManager>(),
      getIt<LocalStorage>(),
    ),
  );

  // // ======================
  // // Features: Auth (Domain)
  // // ======================

  getIt.registerLazySingleton<SignupUseCase>(
    () => SignupUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<SendOtpUseCase>(
    () => SendOtpUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<VerifyOtpUseCase>(
    () => VerifyOtpUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<UploadDriverDocsUseCase>(
    () => UploadDriverDocsUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton(() => LogoutUseCase(getIt<AuthRepository>()));

  // Register LogoutCubit
  getIt.registerFactory<LogoutCubit>(() => LogoutCubit(getIt<LogoutUseCase>()));

  ///////////////home/////////////////////
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<HomeRemoteDataSource>(), getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<GoOnlineUseCase>(
    () => GoOnlineUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton<GoOfflineUseCase>(
    () => GoOfflineUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton<UpdateDriverLocationUseCase>(
    () => UpdateDriverLocationUseCase(getIt<HomeRepository>()),
  );

  getIt.registerLazySingleton(
    () => UpdateDriverRadiusUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(() => SocketService());

  getIt.registerLazySingleton(
    () => GetRideRequestUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(() => ArriveTripUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(() => CancelTripUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(() => StartTripUseCase(getIt<HomeRepository>()));
  getIt.registerLazySingleton(
    () => CompleteTripUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(
    () => GetDriverTripHistoryUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(
    () => GetDriverWalletSummaryUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(
    () => RateTripUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(
    () => GetRatingTagsUseCase(getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton(
    () => GetDriverDocumentsUseCase(getIt<HomeRepository>()),
  );
  // DI
  getIt.registerFactory<RideRequestCubit>(
    () => RideRequestCubit(
      getRideRequestUseCase: getIt<GetRideRequestUseCase>(),
      arriveTripUseCase: getIt<ArriveTripUseCase>(),
      cancelTripUseCase: getIt<CancelTripUseCase>(),
      startTripUseCase: getIt<StartTripUseCase>(),
      completeTripUseCase: getIt<CompleteTripUseCase>(),
      rateTripUseCase: getIt<RateTripUseCase>(),
    ),
  );
  
  getIt.registerFactory<TripHistoryCubit>(
    () => TripHistoryCubit(getIt<GetDriverTripHistoryUseCase>()),
  );

  getIt.registerFactory<DriverWalletCubit>(
    () => DriverWalletCubit(getIt<GetDriverWalletSummaryUseCase>()),
  );

  getIt.registerFactory<RatingTagsCubit>(
    () => RatingTagsCubit(getIt<GetRatingTagsUseCase>()),
  );

  getIt.registerFactory<DriverDocumentsCubit>(
    () => DriverDocumentsCubit(getIt<GetDriverDocumentsUseCase>()),
  );

  // ── Driver Status ────────────────────────────

  getIt.registerFactory(
    () => DriverStatusCubit(
      getIt<GoOnlineUseCase>(),
      getIt<GoOfflineUseCase>(),
      getIt<UpdateDriverRadiusUseCase>(),
    ),
  );

  // ── Socket ────────────────────────────────────
  // NOTE: Requires DriverStatusCubit, RideRequestCubit, and accessToken from widget tree
  getIt.registerFactoryParam<SocketCubit, SocketCubitParams, void>(
    (params, _) => SocketCubit(
      service: getIt.get<SocketService>(),
      rideRequestCubit: params.rideRequestCubit,
      driverStatusCubit: params.driverStatusCubit,
      tokenManager: getIt<TokenManager>(),
    ),
  );

  // ── Services ─────────────────────────────────

  getIt.registerLazySingleton(() => RoutingService());

  // getIt.registerLazySingleton(() => GeocodingService());

  // ── Map ──────────────────────────────────────
  // NOTE: Requires DriverStatusCubit and SocketCubit from widget tree
  getIt.registerFactoryParam<MapCubit, MapCubitParams, void>(
    (params, _) => MapCubit(
      driverStatusCubit: params.driverStatusCubit,
      socketCubit: params.socketCubit,
      routingService: getIt<RoutingService>(),
    ),
  );

  // shared ---------------------------
  getIt.registerLazySingleton<SharedRemoteDataSource>(
    () => SharedRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<SharedRepository>(
    () => SharedRepositoryImpl(
      getIt<SharedRemoteDataSource>(),
      getIt<ApiClient>(),
    ),
  );

  getIt.registerLazySingleton<GetAppSettingUseCase>(
    () => GetAppSettingUseCase(getIt<SharedRepository>()),
  );
  getIt.registerFactory<AppSettingCubit>(
    () => AppSettingCubit(getIt<GetAppSettingUseCase>()),
  );
}

// ── Helper classes for parameterized factories ─────────────

class SocketCubitParams {
  final DriverStatusCubit driverStatusCubit;
  final RideRequestCubit rideRequestCubit;

  SocketCubitParams({
    required this.driverStatusCubit,
    required this.rideRequestCubit,
  });
}

class MapCubitParams {
  final DriverStatusCubit driverStatusCubit;
  final SocketCubit socketCubit;

  MapCubitParams({required this.driverStatusCubit, required this.socketCubit});
}
