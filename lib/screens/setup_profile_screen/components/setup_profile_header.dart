import 'dart:html';

import 'package:finance_ui_kits/constants/colors.dart';
import 'package:finance_ui_kits/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SetupProfileHeader extends StatelessWidget {
  const SetupProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: textGray2,
            ),
            Text(
              'Set Up Profile',
              style: PrimaryFont.bold600(24).copyWith(
                color: textBlack3,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: PrimaryFont.medium500(18).copyWith(
                  color: textGray2,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Stack(
            children: [
              Container(
                width: 112,
                height: 112,
                decoration: BoxDecoration(
                    // border: Border.all(
                    //   width: 0,
                    // ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: mainBlue1,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
