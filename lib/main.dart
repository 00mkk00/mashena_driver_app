import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mashena_driver_app/core/services/custom_bloc_observer.dart';
import 'package:mashena_driver_app/core/services/get_it_service.dart';
import 'package:mashena_driver_app/feature/splash/presentation/views/splash_view.dart';

void main() async {
  setupLocator();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = CustomBlocObserver();

  runApp(const MashenaApp());
}

class MashenaApp extends StatelessWidget {
  const MashenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
