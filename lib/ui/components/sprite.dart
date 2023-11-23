import 'package:flutter/material.dart';
import 'package:gb_designer/theme.dart';
import 'package:gb_designer/ui/components/pixel.dart';

class GBSprite extends StatefulWidget {
  const GBSprite({super.key, this.width = 16, this.height = 16});

  final int width;
  final int height;

  @override
  State<GBSprite> createState() => _GBSpriteState();
}

class _GBSpriteState extends State<GBSprite> {
  List<Color> data = [];

  @override
  void initState() {
    data = List.generate(widget.width * widget.height, (index) => colorLightGray);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const padding = 2.0;
    return ColoredBox(
      color: colorBlack,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.width,
            mainAxisSpacing: padding,
            crossAxisSpacing: padding,
          ),
          itemCount: widget.width * widget.height,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final color = data[index];
            return GBPixel(
              index: index,
              color: color,
              onTap: (index) {
                setState(() {
                  data[index] = (data[index] == colorBlack) ? colorWhite : colorBlack;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
