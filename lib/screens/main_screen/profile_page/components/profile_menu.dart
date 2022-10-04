import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: secondaryTransparent1,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              icon,
              width: 16,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              text,
              style: PrimaryFont.bold600(16).copyWith(
                color: textBlack3,
              ),
            ),
          ),
          IconButton(
            onPressed: press,
            icon: Image.asset(
              '/icons/arrow_right.png',
              height: 22,
              width: 22,
              color: secondaryGray3,
            ),
            splashColor: backgroundWhite,
            // disabledColor: secondaryGray3,
            // focusColor: Colors.red,
            hoverColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
