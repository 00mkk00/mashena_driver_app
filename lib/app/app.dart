import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/feature/settings/presentation/cubits/locale_cubit.dart';

import '../core/theme/app_theme.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocaleCubit>(
      create: (_) => getIt<LocaleCubit>(),
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light(locale),
            darkTheme: AppTheme.dark(locale),
            themeMode: ThemeMode.system,
            locale: locale,
            routerConfig: AppRouter.router,
            supportedLocales: const [Locale('en'), Locale('ar')],
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
