import 'package:flutter/material.dart';
import 'package:mashena_driver_app/feature/auth/presentation/views/widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SignupViewBody()));
  }
}
