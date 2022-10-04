import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/home_page/components/bank_card.dart';
import 'package:finance_ui_kits/screens/main_screen/name_page.dart';
import 'package:finance_ui_kits/screens/main_screen/wallet_page/components/spending_card.dart';
import 'package:finance_ui_kits/screens/main_screen/wallet_page/components/withdraw_card.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            NamePage(
              text: 'Wallet',
            ),
            const SizedBox(
              height: 30,
            ),
            BankCard(),
            const SizedBox(
              height: 18,
            ),
            WithdrawCard(),
            const SizedBox(
              height: 24,
            ),
            SpendingCard(),
          ],
        ),
      ),
    );
  }
}
