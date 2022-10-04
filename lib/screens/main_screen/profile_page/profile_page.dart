import 'package:finance_ui_kits/components/form_setup_profile/form_dropdown.dart';
import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/profile_page/components/profile_header.dart';
import 'package:finance_ui_kits/screens/main_screen/profile_page/components/profile_menu.dart';
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
              icon: '/icons/menu_profile/Profile.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Privacy Policy',
              icon: '/icons/menu_profile/shield.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Setting',
              icon: '/icons/menu_profile/Setting.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Help Center',
              icon: '/icons/menu_profile/help.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Contact',
              icon: '/icons/menu_profile/Call.png',
              press: () {},
            ),
            ProfileMenu(
              text: 'Logout',
              icon: '/icons/menu_profile/Logout.png',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
