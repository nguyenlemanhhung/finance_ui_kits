import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppbarHeaderPage extends StatelessWidget {
  const CustomAppbarHeaderPage({super.key, required this.pageName});
  final String pageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      // width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              iconSize: 30,
              color: secondaryGray5,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              pageName,
              style: PrimaryFont.bold600(28).copyWith(
                color: textBlack3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
