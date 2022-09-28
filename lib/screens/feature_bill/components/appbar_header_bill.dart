import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/btn_noti_with_counter.dart';
import 'package:flutter/material.dart';

class AppbarHeaderBill extends StatelessWidget {
  const AppbarHeaderBill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: textGray2,
        ),
        Text(
          'Bill Pay',
          style: PrimaryFont.bold600(24).copyWith(
            color: textBlack3,
          ),
        ),
        BtnNotificationWithCounter(
          numOfNotification: 0,
          press: () {},
        )
      ],
    );
  }
}
