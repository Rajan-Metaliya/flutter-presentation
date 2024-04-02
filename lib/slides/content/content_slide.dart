import 'package:flutter/material.dart';

import '../../utils/theme/extensions/extension.dart';
import '../../widgets/scaffold_wrapper.dart';

class ContentSlide extends StatelessWidget {
  const ContentSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Column(
        children: [
          Text(
            'Content Slide',
            style: Theme.of(context).appTextTheme.title,
          ),
        ],
      ),
    );
  }
}
