import 'package:finance_ui_kits/components/blue_button.dart';
import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_email.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_password.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/forgot_password/components/send_code_page.dart';
import 'package:finance_ui_kits/screens/forgot_password/forgot_password_screen.dart';
import 'package:finance_ui_kits/screens/sign_in/components/social_card.dart';
import 'package:finance_ui_kits/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // final _formKey = GlobalKey<FormState>;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          FormInputEmail(),
          const SizedBox(
            height: 20,
          ),
          FormInputPassword(),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text(
                'Forgot Password?',
                style: PrimaryFont.medium500(14).copyWith(
                  color: textGray3,
                ),
              ),
              onPressed: () {
                _modalBottomForgotPassword();
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          BlueButton(
            text: 'Log In',
            press: () {},
          ),
        ],
      ),
    );
  }

  void _modalBottomForgotPassword() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(30.0),
            topRight: const Radius.circular(30.0),
          ),
        ),
        child: Container(
          child: SplashScreen(),
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
        ),
      ),
    );
  }
}
