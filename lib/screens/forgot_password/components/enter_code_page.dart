import 'package:finance_ui_kits/components/custom_button.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class EnterCodePage extends StatefulWidget {
  const EnterCodePage({super.key});

  @override
  State<EnterCodePage> createState() => _EnterCodePageState();
}

class _EnterCodePageState extends State<EnterCodePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Forgot Password',
              style: PrimaryFont.bold600(26).copyWith(
                color: textBlack3,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter your email so we can send you a code for the verification proccess',
              style: PrimaryFont.medium500(16).copyWith(
                color: secondaryGray5,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Form(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     setState(() {
                //       errors.add('Please enter your email');
                //     });
                //   }
                //   return null;
                // },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                text: 'Continue',
                press: () {},
                bgColor: mainBlue1,
                borderRadius: 30,
                textBtnSize: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
