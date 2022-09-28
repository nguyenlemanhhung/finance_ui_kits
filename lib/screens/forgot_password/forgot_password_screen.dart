import 'package:finance_ui_kits/components/blue_button.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/forgot_password/components/enter_code_page.dart';
import 'package:finance_ui_kits/screens/forgot_password/components/send_code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/custom_icon_form.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SendCodePage();
    // return Scaffold(
    //   body: SafeArea(
    //     child: SendCodePage(),
    // child: SizedBox(
    //   height: double.infinity,
    //   width: double.infinity,
    //   child: SingleChildScrollView(
    //     physics: const AlwaysScrollableScrollPhysics(),
    //     padding: const EdgeInsets.symmetric(
    //       horizontal: 32,
    //       vertical: 30,
    //     ),
    //     child: SendCodePage(),
    //   ),
    // ),
    // ),
    // );
  }
}
