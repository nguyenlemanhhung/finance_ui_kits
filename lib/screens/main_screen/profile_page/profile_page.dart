import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/profile_page/components/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ProfileHeader(),
            const SizedBox(
              height: 20,
            ),
            ProfileMenu(
              text: 'My Account',
              icon: '/icons/Profile.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Privacy Policy',
              icon: '/icons/shield.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Setting',
              icon: '/icons/Setting.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Help Center',
              icon: '/icons/help.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Contact',
              icon: '/icons/Call.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Logout',
              icon: '/icons/Logout.png',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: secondaryTransparent1,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              icon,
              width: 16,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              text,
              style: PrimaryFont.bold600(16).copyWith(
                color: textBlack3,
              ),
            ),
          ),
          IconButton(
            onPressed: press,
            icon: Image.asset(
              '/icons/arrow_right.png',
              height: 22,
              width: 22,
              color: secondaryGray3,
            ),
            splashColor: backgroundWhite,
            // disabledColor: secondaryGray3,
            // focusColor: Colors.red,
            hoverColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
