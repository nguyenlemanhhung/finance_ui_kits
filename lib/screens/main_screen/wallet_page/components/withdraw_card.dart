import 'package:finance_ui_kits/components/custom_button.dart';
import 'package:finance_ui_kits/components/custom_button_nofull.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class WithdrawCard extends StatelessWidget {
  const WithdrawCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                '/icons/wallet/wallet_transfer.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Withdraw',
                    style: PrimaryFont.bold600(16).copyWith(
                      color: textBlack3,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Take back money',
                    style: PrimaryFont.regular400(12).copyWith(
                      color: secondaryGray5,
                    ),
                  )
                ],
              ),
            ],
          ),
          CustomButtonNofull(
            text: 'Withdraw',
            press: () {},
            bgColor: mainBlue1,
            borderRadius: 20,
            textBtnSize: 14,
          ),
        ],
      ),
    );
  }
}
