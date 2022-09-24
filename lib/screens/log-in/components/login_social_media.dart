import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'icons/gmail.png',
          height: 64,
          width: 64,
        ),
        SizedBox(
          width: 30,
        ),
        Image.asset(
          'icons/facebook.png',
          height: 64,
          width: 64,
        )
      ],
    );
  }
}
