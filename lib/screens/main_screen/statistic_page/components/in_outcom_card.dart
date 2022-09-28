import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class InOutComCard extends StatelessWidget {
  const InOutComCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundWhite,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: mainBlue2,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    '/icons/Income.png',
                    width: 20,
                    height: 20,
                    color: backgroundWhite,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '\$5,440',
                      style: PrimaryFont.bold600(16).copyWith(
                        color: textBlack3,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Income',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textGray4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            VerticalDivider(
              thickness: 2,
              color: textGray4,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: mainCyan1,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    '/icons/Outcome.png',
                    width: 20,
                    height: 20,
                    color: backgroundWhite,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '\$2,209',
                      style: PrimaryFont.bold600(16).copyWith(
                        color: textBlack3,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Outcome',
                      style: PrimaryFont.regular400(12).copyWith(
                        color: textGray4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
