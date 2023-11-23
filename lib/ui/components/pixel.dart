import 'package:flutter/material.dart';
import 'package:gb_designer/theme.dart';

class GBPixel extends StatelessWidget {
  const GBPixel({
    super.key,
    required this.index,
    this.color = colorWhite,
    this.onTap,
  });

  final int index;
  final Color color;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(index),
      child: ColoredBox(
        color: color,
      ),
    );
  }
}
