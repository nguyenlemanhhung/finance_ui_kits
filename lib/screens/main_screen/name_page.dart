import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class NamePage extends StatelessWidget {
  const NamePage({
    Key? key,
    this.text,
  }) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: PrimaryFont.bold600(28).copyWith(
          color: textBlack3,
        ),
      ),
    );
  }
}
