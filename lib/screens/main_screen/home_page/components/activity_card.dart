import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Last activity',
                style: PrimaryFont.bold600(18).copyWith(
                  color: textBlack3,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: secondaryGray3,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: backgroundWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      '/icons/bank_logo.png',
                      height: 54,
                      width: 54,
                    ),
                    Column(
                      children: [
                        Text(
                          'Paypal Income',
                          style: PrimaryFont.medium500(14).copyWith(
                            color: textBlack3,
                          ),
                        ),
                        Text(
                          'Today',
                          style: PrimaryFont.regular400(11).copyWith(
                            color: textGray2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '+Rp.500k',
                  style: PrimaryFont.bold600(16).copyWith(
                    color: mainBlue1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
