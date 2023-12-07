import 'package:flutter/material.dart';

class PaletteColor {
  const PaletteColor(this.firstColor, this.secondColor, this.thirdColor, this.fourthColor);

  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  final Color fourthColor;
}

class Palette {
  Palette({
    this.index = 0,
    this.colors = const [
      PaletteColor(Color(0xFF003f00), Color(0xFF2e7320), Color(0xFF8cbf0a), Color(0xFFa0cf0a)),
      PaletteColor(Color(0XFF000000), Color(0xFF555555), Color(0xFFAAAAAA), Color(0xFFFFFFFF)),
    ],
  });

  final int index;
  final List<PaletteColor> colors;

  Color get firstColor => colors[index].firstColor;
  Color get secondColor => colors[index].secondColor;
  Color get thirdColor => colors[index].thirdColor;
  Color get fourthColor => colors[index].fourthColor;
}
