import 'package:flutter/material.dart';

class GBPixel extends StatelessWidget {
  const GBPixel({super.key, this.color = Colors.black});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
    );
  }
}
