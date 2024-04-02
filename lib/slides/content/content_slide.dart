import 'package:flutter/material.dart';

import '../../widgets/scaffold_wrapper.dart';

class ContentSlide extends StatelessWidget {
  const ContentSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(
      body: Column(
        children: [
          Text('Content Slide'),
        ],
      ),
    );
  }
}
