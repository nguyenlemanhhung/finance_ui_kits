import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class BillPayItem extends StatelessWidget {
  const BillPayItem({
    Key? key,
    required this.image,
    required this.name,
    required this.backgroundColor,
    required this.press,
  }) : super(key: key);

  final String image, name;
  final GestureTapCallback press;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 70,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  image,
                  height: 28,
                  width: 28,
                  color: backgroundWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              style: PrimaryFont.medium500(12).copyWith(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
