import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class BtnNotificationWithCounter extends StatelessWidget {
  const BtnNotificationWithCounter({
    Key? key,
    required this.numOfNotification,
    required this.press,
  }) : super(key: key);
  final int numOfNotification;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Image.asset(
              '/icons/Notification.png',
              color: secondaryGray3,
              height: 24,
              width: 20,
            ),
          ),
          if (numOfNotification != 0)
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: mainCyan1,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: backgroundGray,
                  ),
                ),
                child: Center(
                  child: Text(
                    '$numOfNotification',
                    style: PrimaryFont.bold700(5).copyWith(
                      color: textBlack3,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
