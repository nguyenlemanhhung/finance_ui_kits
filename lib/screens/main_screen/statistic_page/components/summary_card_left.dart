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
    return Container(
      padding: EdgeInsets.only(
        // right: 22,
        left: 16,
      ),
      width: 194,
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/statistic/purple_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 117,
            height: 46,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('/images/statistic/clippath_button.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: PrimaryFont.bold600(16).copyWith(
                  color: backgroundWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return Stack(
    //   children: [
    //     ClippathCustom(
    //       width: 194,
    //       height: 160,
    //       backgroundColor: mainBlue1,
    //     ),
    //     Positioned(
    //       top: 22,
    //       left: 16,
    //       child: Column(
    //         children: [
    //           Text(
    //             'Make Finance',
    //             style: PrimaryFont.bold700(20).copyWith(
    //               color: backgroundWhite,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Text(
    //             'More Efficient',
    //             style: PrimaryFont.bold700(20).copyWith(
    //               color: backgroundWhite,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           GestureDetector(
    //             onTap: () {},
    //             child: ClippathCustom(
    //               width: 117,
    //               height: 46,
    //               backgroundColor: mainCyan3,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
