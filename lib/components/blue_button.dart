import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key, required this.text, required this.press});
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.all(20),
        color: mainBlue1,
        child: Text(
          text,
          style: PrimaryFont.bold600(20).copyWith(
            color: backgroundWhite,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        onPressed: press,
      ),
    );
  }
}
