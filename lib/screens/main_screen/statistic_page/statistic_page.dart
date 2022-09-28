import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/screens/main_screen/name_page.dart';
import 'package:finance_ui_kits/screens/main_screen/statistic_page/components/in_outcom_card.dart';
import 'package:finance_ui_kits/screens/main_screen/statistic_page/components/statistic_chart.dart';
import 'package:finance_ui_kits/screens/main_screen/statistic_page/components/summary_card_left.dart';
import 'package:finance_ui_kits/screens/main_screen/statistic_page/components/summary_card_right.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGlobal,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const NamePage(
                text: 'Statistic',
              ),
              const SizedBox(
                height: 20,
              ),
              StatisticChart(),
              const SizedBox(
                height: 30,
              ),
              InOutComCard(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SummaryCardLeft(), SummaryCardRight()],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
