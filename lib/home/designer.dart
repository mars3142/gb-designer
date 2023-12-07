import 'package:flutter/material.dart';
import 'package:gb_designer/common/palette_provider.dart';
import 'package:gb_designer/theme.dart';
import 'package:gb_designer/common/pixel.dart';
import 'package:gb_designer/common/sprite.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GBDesigner extends ConsumerWidget {
  const GBDesigner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const paletteIndex = 0;
    final palette = ref.watch(paletteProvider(paletteIndex));
    return Scaffold(
      appBar: AppBar(
        title: const Text('GB Designer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth / 4,
                child: Column(
                  children: [
                    const GBSprite(size: 8, paletteIndex: paletteIndex),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('L'),
                        SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.firstColor, outline: true)),
                        const Text('R'),
                        SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.fourthColor, outline: true)),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Palette'),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: colorBlack),
                          ),
                          child: Row(
                            children: [
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.firstColor)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.secondColor)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.thirdColor)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: palette.fourthColor)),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
