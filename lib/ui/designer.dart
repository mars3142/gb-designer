import 'package:flutter/material.dart';
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth / 4,
                child: const GBSprite(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
