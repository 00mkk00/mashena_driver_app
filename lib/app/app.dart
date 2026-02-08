import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';

import '../core/theme/app_theme.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(deviceLocale),
      darkTheme: AppTheme.dark(deviceLocale),
      themeMode: ThemeMode.system,
      locale: deviceLocale,
      routerConfig: AppRouter.router,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
