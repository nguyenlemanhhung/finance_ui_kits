import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class FormInputEmail extends StatelessWidget {
  const FormInputEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: PrimaryFont.medium500(16).copyWith(
            color: textGray3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          // validator: (value) {
          //   if (value.isEmpty) {
          //     setState(() {
          //       errors.add("Please enter your email")
          //     });
          //   }
          //   return null;
          // },
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(
            hintText: 'Enter your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            prefixIcon: CustomIconForm(
              icon: '/icons/input_auth/email.png',
            ),
            suffixIcon: CustomIconForm(
              icon: '/icons/input_auth/Checklist.png',
            ),
          ),
        ),
      ],
    );
  }
}
