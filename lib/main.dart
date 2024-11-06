import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/splashScreen/splash_screen.dart';
import 'package:login_flutter_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       themeMode: ThemeMode.system ,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
     debugShowCheckedModeBanner: false,
     defaultTransition: Transition.leftToRightWithFade,
     transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );  
  }
}

