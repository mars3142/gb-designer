import 'package:flutter/material.dart';
import 'package:gb_designer/theme.dart';

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
      PaletteColor(colorWhite, colorLightGray, colorGray, colorBlack),
    ],
  });

  final int index;
  final List<PaletteColor> colors;

  Color get firstColor => colors[index].firstColor;
  Color get secondColor => colors[index].secondColor;
  Color get thirdColor => colors[index].thirdColor;
  Color get fourthColor => colors[index].fourthColor;
}
