import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class ProfileInputName extends StatelessWidget {
  const ProfileInputName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: PrimaryFont.medium500(16).copyWith(
            color: textGray3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(
            // labelText: 'Password',
            // hintText: 'Enter your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            // prefixIcon: CustomIconForm(
            //   icon: '/icons/email.png',
            // ),
            // suffixIcon: CustomIconForm(
            //   icon: '/icons/Checklist.png',
            // ),
          ),
        ),
      ],
    );
  }
}
