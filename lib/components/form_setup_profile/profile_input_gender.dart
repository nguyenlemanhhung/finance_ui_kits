import 'package:finance_ui_kits/components/custom_icon_form.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';

class ProfileInputGender extends StatefulWidget {
  const ProfileInputGender({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileInputGender> createState() => _ProfileInputGenderState();
}

String? valueChoose = '';
final listGender = ['Male', 'Female'];

class _ProfileInputGenderState extends State<ProfileInputGender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
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
            hintText: 'Select your gender',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            // prefixIcon: CustomIconForm(
            //   icon: '/icons/email.png',
            // ),
            suffixIcon: CustomIconForm(
              icon: '/icons/drop_down.png',
            ),
            // suffixIcon: DropdownButton(
            //   value: valueChoose,
            //   items: listGender.map(
            //     (e) => DropdownMenuItem(child: Text(e), value: e,)
            //   ).toList(),
            //   onChanged: (val) {},
            // ),
          ),
        ),
      ],
    );
  }
}
