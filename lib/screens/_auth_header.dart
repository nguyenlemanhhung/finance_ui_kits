import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader(
      {super.key, required this.firstText, required this.lastText});
  final String firstText;
  final String lastText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'assets/icons/logo.png',
          width: 76,
          height: 76,
        ),
        RichText(
          text: TextSpan(
            text: firstText,
            style: PrimaryFont.bold700(24).copyWith(
              color: textBlack3,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: lastText,
                style: PrimaryFont.bold700(24).copyWith(color: textBlack3),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
