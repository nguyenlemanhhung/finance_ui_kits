import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/feature_bill/all_billpay_page.dart';
import 'package:finance_ui_kits/screens/feature_bill/components/bill_pay_item.dart';
import 'package:flutter/material.dart';

class CategoriesBillpayPage extends StatelessWidget {
  const CategoriesBillpayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BillPayItem(
            image: '/icons/bill_page/electricity.png',
            backgroundColor: mainBlue1,
            name: 'Electricity',
            press: () {},
          ),
          BillPayItem(
            image: "/icons/bill_page/water.png",
            backgroundColor: mainCyan3,
            name: 'Water',
            press: () {},
          ),
          BillPayItem(
            image: "/icons/bill_page/internet.png",
            backgroundColor: mainCyan1,
            name: 'Internet',
            press: () {},
          ),
          BillPayItem(
            image: "/icons/bill_page/Category.png",
            backgroundColor: mainBlue2,
            name: 'More',
            press: () {
              Navigator.pushNamed(context, AllBillPayPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
