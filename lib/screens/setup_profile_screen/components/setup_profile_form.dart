import 'package:finance_ui_kits/components/blue_button.dart';
import 'package:finance_ui_kits/components/form_setup_profile/profile_input_contact.dart';
import 'package:finance_ui_kits/components/form_setup_profile/profile_input_dob.dart';
import 'package:finance_ui_kits/components/form_setup_profile/profile_input_gender.dart';
import 'package:finance_ui_kits/components/form_setup_profile/profile_input_name.dart';
import 'package:finance_ui_kits/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SetupProfileForm extends StatefulWidget {
  const SetupProfileForm({super.key});

  @override
  State<SetupProfileForm> createState() => _SetupProfileFormState();
}

class _SetupProfileFormState extends State<SetupProfileForm> {
  late String fullName;
  late String contactNumber;
  late String dateOfBirth;
  late String gender;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ProfileInputName(),
          const SizedBox(
            height: 20,
          ),
          ProfileInputContact(),
          const SizedBox(
            height: 20,
          ),
          ProfileInputDob(),
          const SizedBox(
            height: 20,
          ),
          ProfileInputGender(),
          const SizedBox(
            height: 30,
          ),
          BlueButton(
            text: 'Continue',
            press: () {
              Navigator.pushNamed(context, MainScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
