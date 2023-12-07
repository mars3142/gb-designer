import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gb_designer/common/palette.dart';
import 'package:gb_designer/common/palette_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesignerPixelModel {
  const DesignerPixelModel({
    this.paletteIndex = 0,
    this.size = 16,
  });

  final int paletteIndex;
  final int size;
}

final designerPixelProvider = StateNotifierProvider.family<DesignerPixelNotifier, List<Color>, DesignerPixelModel>(
  (ref, model) {
    final palette = ref.watch(paletteProvider(model.paletteIndex));
    return DesignerPixelNotifier(palette, model.size);
  },
);

class DesignerPixelNotifier extends StateNotifier<List<Color>> {
  DesignerPixelNotifier(Palette palette, int size)
      : super(List.generate(size * size, (index) => Random().nextBool() ? palette.firstColor : palette.fourthColor));

  void updatePixel(int index, Color color) {
    state = [
      ...state.sublist(0, index),
      color,
      ...state.sublist(index + 1),
    ];
  }
}
