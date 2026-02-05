import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../core/theme/app_theme.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(context.locale),
      darkTheme: AppTheme.dark(context.locale),
      routerConfig: AppRouter.router,

      // ✅ Easy Localization
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
    );
  }
}
