import 'package:flutter/material.dart';
import 'package:gb_designer/ui/components/pixel.dart';

class GBSprite extends StatelessWidget {
  const GBSprite({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemCount: 8 * 8,
      itemBuilder: (context, index) {
        return const GBPixel();
      },
    );
  }
}
