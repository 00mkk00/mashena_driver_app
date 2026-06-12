import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/home/data/home_models.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/driver_status_cubit/driver_status_state.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/map_cubit/map_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/ride_request_cubit/ride_request_cubit.dart';
import 'package:mashena_driver_app/feature/home/presentation/cubits/socket_cubit/socket_cubit.dart';

import '../widgets/home_view_body.dart';

/// Root screen for the driver home page.
/// Provides all required Cubits and initializes location on mount.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final driverStatusCubit = getIt<DriverStatusCubit>();
    final rideRequestCubit = getIt<RideRequestCubit>();
    final accessToken = getIt<TokenManager>().accessToken ?? '';

    final socketCubit = getIt.get<SocketCubit>(
      param1: SocketCubitParams(
        driverStatusCubit: driverStatusCubit,
        rideRequestCubit: rideRequestCubit,
        accessToken: accessToken,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<DriverStatusCubit>(create: (_) => driverStatusCubit),
        BlocProvider<RideRequestCubit>(create: (_) => rideRequestCubit),
        BlocProvider<SocketCubit>(create: (_) => socketCubit),
        BlocProvider<MapCubit>(
          create: (_) => getIt.get<MapCubit>(
            param1: MapCubitParams(
              driverStatusCubit: driverStatusCubit,
              socketCubit: socketCubit,
            ),
          )..initializeMap(),
        ),
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

  @override
  Widget build(BuildContext context) {
    return BlocListener<DriverStatusCubit, DriverStatusState>(
      listenWhen: (prev, curr) =>
          curr.errorMessage != null && prev.errorMessage != curr.errorMessage,
      listener: (context, state) {
        context.showErrorToast(state.errorMessage!);
      },
      child: HomeViewBody(driver: _driver),
    );
  }
}
