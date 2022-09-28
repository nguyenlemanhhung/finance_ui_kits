import 'package:finance_ui_kits/components/blue_button.dart';
import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_conformpw.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_email.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_name.dart';
import 'package:finance_ui_kits/components/form_input_auth/form_input_password.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/setup_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late String name;
  late String email;
  late String password;
  late String conform_password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          FormInputName(),
          const SizedBox(
            height: 20,
          ),
          FormInputEmail(),
          const SizedBox(
            height: 20,
          ),
          FormInputPassword(),
          const SizedBox(
            height: 20,
          ),
          FormInputConformPW(),
          const SizedBox(
            height: 25,
          ),
          BlueButton(
            text: 'Logn Up',
            press: () {
              Navigator.pushNamed(context, SetupProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
