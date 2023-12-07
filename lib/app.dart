import 'package:flutter/material.dart';
import 'package:gb_designer/home/designer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GBApp extends StatelessWidget {
  const GBApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'GB Designer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const GBDesigner(),
      ),
    );
  }
}
