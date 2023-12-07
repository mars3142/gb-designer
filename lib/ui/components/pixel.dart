import 'package:flutter/material.dart';
import 'package:gb_designer/theme.dart';

class GBPixel extends StatelessWidget {
  const GBPixel({
    super.key,
    this.index = 0,
    this.color = colorWhite,
    this.onTap,
    this.outline = false,
  });

  final int index;
  final Color color;
  final Function(int index)? onTap;
  final bool outline;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: outline ? Border.all(color: colorBlack) : null,
      ),
      child: GestureDetector(
        onTap: () => onTap?.call(index),
        child: ColoredBox(
          color: color,
        ),
      ),
    );
  }
}
