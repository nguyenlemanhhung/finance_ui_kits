import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class CyanButton extends StatelessWidget {
  const CyanButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 55,
      ),
      width: double.infinity,
      height: 80,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: PrimaryFont.bold600(22).copyWith(
            color: backgroundWhite,
          ),
        ),
      ),
    );
  }
}
