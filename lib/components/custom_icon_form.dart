import 'package:flutter/material.dart';

class CustomIconForm extends StatelessWidget {
  const CustomIconForm({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        icon,
        height: 34,
        width: 34,
      ),
    );
  }
}
