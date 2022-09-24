import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/sign_up/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildEmail(),
        const SizedBox(
          height: 20,
        ),
        _buildPassword(),
        const SizedBox(
          height: 20,
        ),
        _buildForgotPW(),
        const SizedBox(
          height: 20,
        ),
        _buildLoginBtn(),
        const SizedBox(
          height: 20,
        ),
        _buildSignUpBtn(context),
      ],
    );
  }
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

Widget _buildForgotPW() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      child: Text(
        'Forgot Password?',
        style: PrimaryFont.medium500(14).copyWith(
          color: textGray3,
        ),
      ),
      onPressed: () {},
    ),
  );
}

Widget _buildLoginBtn() {
  return Container(
    // padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: MaterialButton(
      elevation: 0,
      padding: EdgeInsets.all(20),
      color: mainBlue1,
      child: Text(
        'Log In',
        style: PrimaryFont.bold600(20).copyWith(
          color: backgroundWhite,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () {},
    ),
  );
}

Widget _buildSignUpBtn(BuildContext context) {
  return Row(
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignupScreen(),
            ),
          );
        },
        child: Text(
          'Sign Up',
          style: PrimaryFont.regular400(16).copyWith(
            color: mainBlue1,
          ),
        ),
      ),
    ],
  );
}
