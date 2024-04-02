import 'package:flutter/material.dart';

import '../../widgets/scaffold_wrapper.dart';

class IntroSlide extends StatelessWidget {
  const IntroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: const Column(
          children: [
            Text('Flutter Introduction'),
          ],
        ),
      ),
    );
  }
}
