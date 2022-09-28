import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/feature_bill/feature_bill_screen.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured',
                style: PrimaryFont.bold600(18).copyWith(
                  color: textBlack3,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: secondaryGray3,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureCard(
                  icon: '/icons/feature/transfer.png',
                  text: 'Transfer',
                  press: () {
                    // Navigator.pushNamed(context, FeatureBillScreen.routeName);
                  },
                ),
                FeatureCard(
                  icon: "/icons/feature/request.png",
                  text: 'Request',
                  press: () {
                    // Navigator.pushNamed(context, FeatureBillScreen.routeName);
                  },
                ),
                FeatureCard(
                  icon: "/icons/feature/request.png",
                  text: 'Top Up',
                  press: () {
                    // Navigator.pushNamed(context, FeatureBillScreen.routeName);
                  },
                ),
                FeatureCard(
                  icon: "/icons/feature/bill.png",
                  text: 'Bill',
                  press: () {
                    Navigator.pushNamed(context, FeatureBillScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 64,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  icon,
                  height: 28,
                  width: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: PrimaryFont.medium500(12).copyWith(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
