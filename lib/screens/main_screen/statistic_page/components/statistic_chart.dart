import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class StatisticChart extends StatefulWidget {
  const StatisticChart({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticChart> createState() => _StatisticChartState();
}

class _StatisticChartState extends State<StatisticChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance ',
                    style: PrimaryFont.medium500(16).copyWith(
                      color: textGray2,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$12,549.00',
                    style: PrimaryFont.bold600(26).copyWith(
                      color: textBlack3,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: mainBlue1,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        'D',
                        textAlign: TextAlign.center,
                        style: PrimaryFont.medium500(14).copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: mainBlue1,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'W',
                      textAlign: TextAlign.center,
                      style: PrimaryFont.medium500(14).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            '/images/Statistic.png',
            alignment: Alignment.center,
            // height: double.infinity,
            // width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
