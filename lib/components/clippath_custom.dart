import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClippathCustom extends StatelessWidget {
  const ClippathCustom(
      {super.key,
      required this.width,
      required this.height,
      required this.backgroundColor});

  final double width, height;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: SkewCut(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
          ),
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);

    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => false;
}
