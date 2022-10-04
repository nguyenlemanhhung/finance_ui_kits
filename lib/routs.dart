import 'package:finance_ui_kits/screens/feature_bill/all_billpay_page.dart';
import 'package:finance_ui_kits/screens/feature_bill/feature_bill_screen.dart';
import 'package:finance_ui_kits/screens/feature_request/feature_request_page.dart';
import 'package:finance_ui_kits/screens/feature_topup/feature_topup_page.dart';
import 'package:finance_ui_kits/screens/feature_transfer/feature_select_card.dart';
import 'package:finance_ui_kits/screens/feature_transfer/feature_transfer.dart';
import 'package:finance_ui_kits/screens/main_screen/main_screen.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/setup_profile_screen.dart';
import 'package:finance_ui_kits/screens/sign_in/sign_in_screen.dart';
import 'package:finance_ui_kits/screens/sign_up/sign_up_screen.dart';
import 'package:finance_ui_kits/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  //auth scren
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SetupProfileScreen.routeName: (context) => SetupProfileScreen(),

  MainScreen.routeName: (context) => MainScreen(),

  //home children
  FeatureBillScreen.routeName: (context) => FeatureBillScreen(),
  FeatureSelectCard.routeName: (context) => const FeatureSelectCard(),
  FeatureTransfer.routeName: (context) => const FeatureTransfer(),
  FeatureRequestScreen.routeName: (context) => FeatureRequestScreen(),
  FeatureTopupScreen.routeName: (context) => FeatureTopupScreen(),

  AllBillPayPage.routeName: (context) => AllBillPayPage(),
};
