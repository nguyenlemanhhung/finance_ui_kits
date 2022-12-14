import 'package:finance_ui_kits/screens/main_screen/home_page/components/activity_card.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/bank_card.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/features.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/home_page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            HomePageHeader(),
            const SizedBox(
              height: 28,
            ),
            BankCard(),
            const SizedBox(
              height: 23,
            ),
            const Features(),
            const SizedBox(
              height: 28,
            ),
            ActivityCard(),
          ],
        ),
      ),
    );
  }
}
