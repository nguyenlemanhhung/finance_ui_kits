import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/feature_bill/components/appbar_header_bill.dart';
import 'package:finance_ui_kits/screens/feature_bill/components/categories_billpay_page.dart';
import 'package:flutter/material.dart';

class FeatureBillScreen extends StatelessWidget {
  const FeatureBillScreen({Key? key}) : super(key: key);
  static String routeName = "/home/bill";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 50,
        ),
        child: Column(
          children: [
            AppbarHeaderBill(),
            const SizedBox(
              height: 26,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 22,
              ),
              decoration: BoxDecoration(
                color: backgroundWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'You have unpaid bill',
                            style: PrimaryFont.regular400(12).copyWith(
                              color: textGray1,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$20.00',
                            style: PrimaryFont.bold600(32).copyWith(
                              color: secondaryBlack2,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            // fit: StackFit.expand,
                            children: <Widget>[
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: mainBlue1,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(''),
                              ),
                              Positioned(
                                // right: 10,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: mainCyan3,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(''),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: mainCyan1,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(''),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Last Aug 2',
                            style: PrimaryFont.regular400(12).copyWith(
                              color: textGray1,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      color: mainBlue1,
                      child: Text(
                        'Pay Now',
                        style: PrimaryFont.bold600(16).copyWith(
                          color: backgroundWhite,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            CategoriesBillpayPage(),
          ],
        ),
      ),
    );
  }
}
