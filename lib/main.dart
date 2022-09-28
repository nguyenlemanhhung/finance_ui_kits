import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/routs.dart';
import 'package:finance_ui_kits/screens/main_screen/main_screen.dart';
import 'package:finance_ui_kits/screens/sign_in/sign_in_screen.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/setup_profile_screen.dart';
import 'package:finance_ui_kits/screens/sign_up/sign_up_screen.dart';
import 'package:finance_ui_kits/screens/splash/splash_screen.dart';
import 'package:finance_ui_kits/theme.dart';
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
      theme: theme(),
      initialRoute: MainScreen.routeName,
      routes: routes,
    );
  }
}
