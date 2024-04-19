import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:outtapptest/theme/apktheme.dart';
import 'onboard/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OTAppTheme.lightTheme,
      darkTheme: OTAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
