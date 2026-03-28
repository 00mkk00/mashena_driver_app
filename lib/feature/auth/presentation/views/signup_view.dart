import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/signup_cubit/signup_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BlocListener<SignupCubit, SignupState>(
          listener: (context, state) {
    state.when(
      initial: () {},
      loading: () {
        showDialog(
          context: context,
          builder: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      success: (driver) {
        Navigator.pop(context); // close loader
        // context.go(AppRoutes.homePath);
      },
      error: (message) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      },
    );
  },
          child: SignupViewBody(),
        ),
      ),
    );
  }
}
