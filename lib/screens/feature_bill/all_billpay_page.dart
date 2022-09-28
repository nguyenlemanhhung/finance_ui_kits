import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/bill_pay_data.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/btn_noti_with_counter.dart';
import 'package:flutter/material.dart';

class AllBillPayPage extends StatelessWidget {
  const AllBillPayPage({Key? key}) : super(key: key);
  static String routeName = "/home/bill/all-bill";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
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
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 45),
          //   child: GridView(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3,
          //         mainAxisSpacing: 20,
          //       ),
          //       children: categoryItemData.map((BillPayItem) => BillPayItem(
          //         BillPayItem.image,
          //         BillPayItem.name,
          //         BillPayItem.backgroundColor,
          //         BillPayItem.press,
          //       )).toList(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
