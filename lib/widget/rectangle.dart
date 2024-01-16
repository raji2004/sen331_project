import 'package:flutter/material.dart';
import '../utils/utils.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({
    super.key,
    this.width=69,
    this.height=7
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Primary.black,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
