import 'package:flutter/material.dart';

import '../../widgets/scaffold_wrapper.dart';

class IntroSlide extends StatelessWidget {
  const IntroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(
      body: Column(
        children: [
          Text("Flutter Introduction"),
        ],
      ),
    );
  }
}
