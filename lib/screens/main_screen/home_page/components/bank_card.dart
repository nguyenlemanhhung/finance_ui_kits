import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/model/bank_card_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BankCard extends StatefulWidget {
  const BankCard({super.key});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 28),
          height: 208,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
            itemCount: bankCardData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(bankCardData[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Image.asset(bankCardData[index].image),
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              bankCardData.length,
              (index) =>
                  DotIndicator(isAction: _selectIndex == index ? true : false),
            )
          ],
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required this.isAction,
  }) : super(key: key);
  final bool isAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isAction ? 20.0 : 6.0,
      height: 6,
      decoration: BoxDecoration(
        color: isAction ? mainBlue2 : secondaryWhite2,
        shape: BoxShape.circle,
      ),
    );
  }
}
