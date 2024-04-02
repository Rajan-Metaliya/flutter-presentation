import 'package:flutter/material.dart';

import '../../widgets/scaffold_wrapper.dart';

class ContentSlide extends StatelessWidget {
  const ContentSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: const Column(
          children: [
            Text('Content Slide'),
          ],
        ),
      ),
    );
  }
}
