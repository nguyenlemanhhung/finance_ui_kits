import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/components/setup_profile_header.dart';
import 'package:finance_ui_kits/screens/setup_profile_screen/components/setup_profile_form.dart';
import 'package:flutter/material.dart';

class SetupProfileScreen extends StatefulWidget {
  const SetupProfileScreen({Key? key}) : super(key: key);

  @override
  State<SetupProfileScreen> createState() => _SetupProfileScreenState();
}

class _SetupProfileScreenState extends State<SetupProfileScreen> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Container(
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
                  // SetupProfileForm(),
                  buildTextField('Full Name', 'Nguyen Van Teo', false),
                  buildTextField('Contact Number', '0123 456 789', false),
                  buildTextField('Date of Birth', '00/00/00', false),
                  buildTextField('Gender', 'Select your gender', false),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      elevation: 0,
                      padding: EdgeInsets.all(20),
                      color: mainBlue1,
                      child: Text(
                        'Continue',
                        style: PrimaryFont.bold600(20).copyWith(
                          color: backgroundWhite,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: PrimaryFont.medium500(16).copyWith(
            color: textGray3,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: mainBlue1,
            ),
          ),
          child: TextField(
            obscureText: isPasswordTextField ? isObscurePassword : false,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: isPasswordTextField ? Icon(Icons.lock) : null,
              suffixIcon: isPasswordTextField
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: textGray3,
                      ),
                    )
                  : null,
              contentPadding: EdgeInsets.all(5),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: PrimaryFont.regular400(16).copyWith(
                color: secondaryGray3,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
