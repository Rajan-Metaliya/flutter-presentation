import 'package:flutter/material.dart';

import '../../utils/theme/extensions/extension.dart';
import '../../widgets/scaffold_wrapper.dart';

class IntroSlide extends StatelessWidget {
  const IntroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Column(
        children: [
          Text(
            'Flutter Introduction',
            style: Theme.of(context).appTextTheme.title,
          ),
        ],
      ),
    );
  }
}
