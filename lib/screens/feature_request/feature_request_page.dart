import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeatureRequestScreen extends StatelessWidget {
  const FeatureRequestScreen({super.key});
  static String routeName = "/home/request";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Feature Request Page'),
    );
  }
}
