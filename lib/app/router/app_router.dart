import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/login_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/send_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/signup_usecase.dart';
import 'package:mashena_driver_app/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/verify_cubit/verify_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/login_view.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/signup_view.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/verify_otp_view.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/get_onboarding_status_usecase.dart';
import 'package:mashena_driver_app/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:mashena_driver_app/feature/splash/presentation/views/splash_view.dart';

final class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    redirect: (context, state) {
      final onboardingSeen = getIt<GetOnboardingStatus>()();
      final loc = state.matchedLocation;

      final isSplash = loc == AppRoutes.splashPath;
      if (isSplash) return null;

      if (!onboardingSeen) {
        final isOnboarding = loc == AppRoutes.onboardingPath;
        return isOnboarding ? null : AppRoutes.onboardingPath;
      }

      if (onboardingSeen && loc == AppRoutes.onboardingPath) {
        return AppRoutes.loginPath;
      }

      return null;
    },
    initialLocation: AppRoutes.splashPath,
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const _RootPage()),
      GoRoute(
        path: AppRoutes.splashPath,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onboardingPath,
        name: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRoutes.loginPath,
        name: AppRoutes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(
            loginUseCase: getIt<LoginUseCase>(),
            sendOtpUseCase: getIt<SendOtpUseCase>(),
          ),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signupPath,
        name: AppRoutes.signup,
        builder: (context, state) => BlocProvider(
          create: (_) => SignupCubit(
            signupUseCase: getIt<SignupUseCase>(),
            sendOtpUseCase: getIt<SendOtpUseCase>(),
          ),
          child: const SignupView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.verificationPath,
        name: AppRoutes.verification,
        builder: (context, state) {
          final data = state.extra as Map;
          return BlocProvider(
            create: (context) => VerifyOtpCubit(
              sendOtpUseCase: getIt<SendOtpUseCase>(),
              verifyOtpUseCase: getIt<VerifyOtpUseCase>(),
            ),
            child: VerifyOtpView(
              email: data['email'],
              phoneNumber: data['phone'],
            ),
          );
        },
      ),
    ],
    errorBuilder: (context, state) => _ErrorPage(error: state.error),
  );
}

class _RootPage extends StatelessWidget {
  const _RootPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Root')));
  }
}

class _ErrorPage extends StatelessWidget {
  const _ErrorPage({required this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(error?.toString() ?? 'Router error')),
    );
  }
}
