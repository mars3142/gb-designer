import 'package:flutter/material.dart';
import 'package:gb_designer/theme.dart';
import 'package:gb_designer/ui/components/pixel.dart';
import 'package:gb_designer/ui/components/sprite.dart';

class GBDesigner extends StatelessWidget {
  const GBDesigner({super.key});

  @override
  Widget build(BuildContext context) {
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
                    const GBSprite(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('L'),
                        SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorWhite, outline: true)),
                        Text('R'),
                        SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorBlack, outline: true)),
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
                          child: const Row(
                            children: [
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorWhite)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorLightGray)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorGray)),
                              SizedBox(height: 12.0, width: 12.0, child: GBPixel(color: colorBlack)),
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
