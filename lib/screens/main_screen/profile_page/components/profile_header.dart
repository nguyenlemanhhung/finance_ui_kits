import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:finance_ui_kits/screens/main_screen/name_page.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          NamePage(
            text: 'Profile',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 112,
            height: 112,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Arya Wijaya',
            style: PrimaryFont.bold600(24).copyWith(
              color: textBlack3,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            '+62 8123456789',
            style: PrimaryFont.medium500(16).copyWith(
              color: textGray2,
            ),
          )
        ],
      ),
    );
  }
}
