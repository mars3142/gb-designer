import 'package:flutter/material.dart';
import 'package:gb_designer/common/pixel.dart';
import 'package:gb_designer/home/designer_provider.dart';
import 'package:gb_designer/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GBSprite extends ConsumerWidget {
  const GBSprite({
    super.key,
    this.size = 16,
    this.paletteIndex = 0,
  });

  final int size;
  final int paletteIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = DesignerPixelModel(size: size, paletteIndex: paletteIndex);
    final pixel = ref.watch(designerPixelProvider(model));
    const padding = 2.0;
    return ColoredBox(
      color: colorBlack,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: GestureDetector(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size,
              mainAxisSpacing: padding,
              crossAxisSpacing: padding,
            ),
            itemCount: size * size,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final color = pixel[index];
              return GBPixel(
                index: index,
                color: color,
              );
            },
          ),
        ),
      ),
    );
  }
}
