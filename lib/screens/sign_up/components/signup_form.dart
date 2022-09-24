import 'dart:js';

import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/log-in/login_screen.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/setup_profile_screen.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildName(),
        const SizedBox(
          height: 20,
        ),
        _buildEmail(),
        const SizedBox(
          height: 20,
        ),
        _buildPassword(),
        const SizedBox(
          height: 20,
        ),
        _buildConfirmPassword(),
        const SizedBox(
          height: 20,
        ),
        _buildSignupBtn(context),
        const SizedBox(
          height: 20,
        ),
        _buildLoginBtn(context),
      ],
    );
  }
}

Widget _buildName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Name',
        style: PrimaryFont.medium500(16).copyWith(
          color: textGray3,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: mainBlue1,
          ),
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: PrimaryFont.regular400(16).copyWith(
            color: secondaryBlack1,
          ),
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.person_pin_rounded,
              ),
              suffixIcon: Icon(
                Icons.check_box,
              ),
              hintText: 'Your Email'),
        ),
      ),
    ],
  );
}

Widget _buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Email',
        style: PrimaryFont.medium500(16).copyWith(
          color: textGray3,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: mainBlue1,
          ),
        ),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: PrimaryFont.regular400(16).copyWith(
            color: secondaryBlack1,
          ),
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.email,
              ),
              suffixIcon: Icon(
                Icons.check_box,
              ),
              hintText: 'Your Email'),
        ),
      ),
    ],
  );
}

Widget _buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Password',
        style: PrimaryFont.medium500(16).copyWith(
          color: textGray3,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: mainBlue1,
          ),
        ),
        child: TextField(
          obscureText: true,
          style: PrimaryFont.regular400(16).copyWith(
            color: secondaryBlack1,
          ),
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              hintText: 'Your Password'),
        ),
      ),
    ],
  );
}

Widget _buildConfirmPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Confirm Password',
        style: PrimaryFont.medium500(16).copyWith(
          color: textGray3,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: mainBlue1,
          ),
        ),
        child: TextField(
          obscureText: true,
          style: PrimaryFont.regular400(16).copyWith(
            color: secondaryBlack1,
          ),
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              hintText: 'Your Password'),
        ),
      ),
    ],
  );
}

Widget _buildSignupBtn(BuildContext context) {
  return Container(
    // padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: MaterialButton(
      elevation: 0,
      padding: EdgeInsets.all(20),
      color: mainBlue1,
      child: Text(
        'Sign Up',
        style: PrimaryFont.bold600(20).copyWith(
          color: backgroundWhite,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SetupProfileScreen(),
          ),
        );
      },
    ),
  );
}

Widget _buildLoginBtn(BuildContext context) {
  return Row(
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        child: Text(
          'Log In',
          style: PrimaryFont.regular400(16).copyWith(
            color: mainBlue1,
          ),
        ),
      ),
    ],
  );
}
