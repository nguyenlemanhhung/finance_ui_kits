import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/_auth_header.dart';
import 'package:finance_ui_kits/screens/log-in/components/login_form.dart';
import 'package:finance_ui_kits/screens/log-in/components/login_social_media.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGray,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AuthHeader(
                      firstText: 'Hey there!\n',
                      lastText: 'Welcome Back',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginForm(),
                    SizedBox(
                      height: 20,
                    ),
                    SocialMedia(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
