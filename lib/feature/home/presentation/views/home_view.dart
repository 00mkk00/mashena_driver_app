import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_offline_use_case.dart';
import 'package:mashena_driver_app/feature/home/domain/use_cases/go_online_use_case.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';

import '../widgets/home_view_body.dart';

/// Root screen for the driver home page.
/// Provides all required Cubits and initializes location on mount.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DriverStatusCubit(
            getIt.get<GoOnlineUseCase>(),
            getIt.get<GoOfflineUseCase>(),
          ),
        ),
        BlocProvider(create: (_) => MapCubit()..initializeMap()),
      ],
      child: const _HomeViewContent(),
    );
  }
}

class _HomeViewContent extends StatefulWidget {
  const _HomeViewContent();

  @override
  State<_HomeViewContent> createState() => _HomeViewContentState();
}

class _HomeViewContentState extends State<_HomeViewContent> {
  // Demo driver profile — in production, load from UserRepository / auth state
  final DriverProfileModel _driver = DriverProfileModel.dummy;

  // Demo ride request — in production, stream from RideRequestRepository
  final RideRequestModel _demoRequest = RideRequestModel.dummy;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DriverStatusCubit, DriverStatusState>(
      listenWhen: (prev, curr) =>
          curr.errorMessage != null && prev.errorMessage != curr.errorMessage,
      listener: (context, state) {
        context.showErrorToast(state.errorMessage!);
      },
      child: HomeViewBody(driver: _driver, rideRequest: _demoRequest),
    );
  }
}
