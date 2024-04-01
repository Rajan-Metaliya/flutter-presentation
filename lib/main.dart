import 'package:flutter/material.dart';

import 'slides/intro/intro_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 166, 183)),
        useMaterial3: true,
      ),
      home: const IntroSlide(),
    );
  }
}
