import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/btn_noti_with_counter.dart';

import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: const BoxDecoration(
                  // border: Border.all(
                  //   width: 0,
                  // ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    'Good Morning',
                    style: PrimaryFont.medium500(12).copyWith(
                      color: secondaryGray5,
                    ),
                  ),
                  Text(
                    'Arya Wijaya',
                    style: PrimaryFont.bold600(18).copyWith(
                      color: textBlack3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          BtnNotificationWithCounter(
            numOfNotification: 0,
            press: () {},
          )
        ],
      ),
    );
  }
}
