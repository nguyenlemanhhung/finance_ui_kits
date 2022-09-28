import 'package:finance_ui_kits/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({super.key, required this.socialIcon, required this.press});
  final String socialIcon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(14),
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: textWhite,
          shape: BoxShape.circle,
        ),
        child: Image.asset(socialIcon),
      ),
    );
  }
}
