import 'package:finance_ui_kits/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: backgroundWhite,
    appBarTheme: const AppBarTheme(
      color: backgroundWhite,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: secondaryGray5,
      ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: secondaryGray3),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 18,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
