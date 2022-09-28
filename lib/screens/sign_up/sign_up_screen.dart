import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/components/_auth_header.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/sign_in/components/sign_form.dart';
import 'package:finance_ui_kits/screens/sign_in/sign_in_screen.dart';
import 'package:finance_ui_kits/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = "sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundGray,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthHeader(
                  firstText: 'Welcome to\n',
                  lastText: 'Walley App',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignUpForm(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: PrimaryFont.regular400(16).copyWith(
                        color: Colors.black87,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      child: Text(
                        'Sign In',
                        style: PrimaryFont.regular400(16).copyWith(
                          color: mainBlue1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
