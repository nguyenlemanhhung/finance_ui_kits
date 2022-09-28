import 'package:finance_ui_kits/components/clippath_custom.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SummaryCardLeft extends StatelessWidget {
  const SummaryCardLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClippathCustom(
          width: 194,
          height: 160,
          backgroundColor: mainBlue1,
        ),
        Positioned(
          top: 22,
          left: 16,
          child: Column(
            children: [
              Text(
                'Make Finance',
                style: PrimaryFont.bold700(20).copyWith(
                  color: backgroundWhite,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'More Efficient',
                style: PrimaryFont.bold700(20).copyWith(
                  color: backgroundWhite,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: ClippathCustom(
                  width: 117,
                  height: 46,
                  backgroundColor: mainCyan3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
