import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mashena_driver_app/core/network/token_manager.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  await dotenv.load(fileName: '.env');
  await configureDependencies();
  await getIt<TokenManager>().loadTokens();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(ScreenUtilInit(designSize: Size(428, 926), child: const App()));
}
