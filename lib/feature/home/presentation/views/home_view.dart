import 'package:flutter/material.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await getIt.get<TokenManager>().clearTokens();
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
