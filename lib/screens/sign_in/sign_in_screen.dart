import 'package:finance_ui_kits/components/custom_button.dart';
import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/components/_auth_header.dart';
import 'package:finance_ui_kits/screens/sign_in/components/sign_form.dart';
import 'package:finance_ui_kits/screens/sign_in/components/social_card.dart';
import 'package:finance_ui_kits/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = "sign_in";

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
                AuthHeader(
                  firstText: 'Hey there!\n',
                  lastText: 'Welcome Back',
                ),
                SizedBox(
                  height: 20,
                ),
                SignForm(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: PrimaryFont.regular400(16).copyWith(
                        color: Colors.black87,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        'Sign Up',
                        style: PrimaryFont.regular400(16).copyWith(
                          color: mainBlue1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(socialIcon: '/icons/gmail.png', press: () {}),
                    const SizedBox(
                      width: 30,
                    ),
                    SocialCard(socialIcon: '/icons/facebook.png', press: () {}),
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
