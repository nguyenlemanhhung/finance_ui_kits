import 'package:finance_ui_kits/screens/log-in/login_screen.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/setup_profile_screen.dart';
import 'package:finance_ui_kits/screens/sign_up/signup_screen.dart';
import 'package:finance_ui_kits/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Kits',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const SplashScreen(),
    );
  }
}
