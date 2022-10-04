import 'package:finance_ui_kits/components/custom_appbar_headerpage.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/recent_payees.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeatureTransfer extends StatelessWidget {
  const FeatureTransfer({super.key});
  static String routeName = "/home/feature_transfer";
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
                pageName: 'Transfer',
              ),
              const SizedBox(
                height: 23,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: PrimaryFont.bold600(18).copyWith(
                      color: textBlack3,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      // border: UnderlineInputBorder(),
                      hintText: 'Enter phone number',
                      icon: Icon(Icons.star),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Payees',
                    style: PrimaryFont.medium500(18).copyWith(
                      color: textBlack3,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PageView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              child: Image.asset(
                                recentPayeesData[index].image,
                                height: 62.0,
                                width: 62.0,
                              ),
                            ),
                            Text(
                              recentPayeesData[index].name,
                              style: PrimaryFont.medium500(14).copyWith(
                                color: textBlack3,
                              ),
                            ),
                            Text(
                              recentPayeesData[index].phone,
                              style: PrimaryFont.regular400(10).copyWith(
                                color: secondaryGray2,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
