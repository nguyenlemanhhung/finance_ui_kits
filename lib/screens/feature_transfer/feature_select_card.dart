import 'package:finance_ui_kits/components/custom_appbar_headerpage.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/bank_card_data.dart';
import 'package:finance_ui_kits/screens/feature_transfer/feature_transfer.dart';
import 'package:flutter/material.dart';

class FeatureSelectCard extends StatelessWidget {
  const FeatureSelectCard({Key? key}) : super(key: key);
  static String routeName = "/home/feature_select_card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomAppbarHeaderPage(
                pageName: 'Select Card',
              ),
              const SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Card for Transfer',
                    style: PrimaryFont.medium500(18).copyWith(
                      color: textGray1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainCyan1,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, FeatureTransfer.routeName);
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent[100],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                  '/images/bank_card/Wallet_blue1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: Image.asset(bankCardData[index].image),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   height: 200,
                      //   decoration: BoxDecoration(
                      //     color: Colors.blueAccent[100],
                      //     borderRadius: BorderRadius.circular(20),
                      //     image: DecorationImage(
                      //       image: AssetImage(
                      //           '/images/bank_card/Wallet_blue1.png'),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      //   // child: Image.asset(bankCardData[index].image),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   height: 200,
                      //   decoration: BoxDecoration(
                      //     color: Colors.blueAccent[100],
                      //     borderRadius: BorderRadius.circular(20),
                      //     image: DecorationImage(
                      //       image: AssetImage(
                      //           '/images/bank_card/Wallet_blue1.png'),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      //   // child: Image.asset(bankCardData[index].image),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
