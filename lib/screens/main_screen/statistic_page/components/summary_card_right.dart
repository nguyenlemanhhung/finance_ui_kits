import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SummaryCardRight extends StatelessWidget {
  const SummaryCardRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            '/images/Diagram.png',
            height: 92,
            width: 92,
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration:
                        BoxDecoration(color: mainCyan1, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Outcome',
                    style: PrimaryFont.medium500(9).copyWith(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration:
                        BoxDecoration(color: mainBlue2, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Income',
                    style: PrimaryFont.medium500(9).copyWith(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
