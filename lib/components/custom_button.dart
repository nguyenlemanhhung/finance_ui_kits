import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.press,
      required this.bgColor,
      required this.borderRadius,
      required this.textBtnSize});
  final String text;
  final Color bgColor;
  final double borderRadius, textBtnSize;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.all(20),
        color: bgColor,
        child: Text(
          text,
          style: PrimaryFont.bold600(textBtnSize).copyWith(
            color: backgroundWhite,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        onPressed: press,
      ),
    );
  }
}
