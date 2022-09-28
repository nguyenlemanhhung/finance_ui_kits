import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/components/setup_profile_header.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/components/setup_profile_form.dart';
import 'package:flutter/material.dart';

class SetupProfileScreen extends StatelessWidget {
  const SetupProfileScreen({super.key});
  static String routeName = "/setup_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SetupProfileHeader(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Personal Information',
                  style: PrimaryFont.medium500(18).copyWith(
                    color: textBlack3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SetupProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
