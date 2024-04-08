import 'package:flutter/material.dart';

import '../../utils/theme/extensions/extension.dart';
import '../../widgets/scaffold_wrapper.dart';

class ContentSlide extends StatelessWidget {
  const ContentSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Topics',
            style: Theme.of(context).appTextTheme.subTitle,
          ),
          const SizedBox(height: 20),

          // Topics
          Text(
            '1. How theme actually works in Flutter?',
            style: Theme.of(context).appTextTheme.body,
          ),
          const SizedBox(height: 10),
          Text(
            '2. Why Flutter Theme Extension is important?',
            style: Theme.of(context).appTextTheme.body,
          ),
          const SizedBox(height: 10),
          Text(
            '3. How to use Flutter Theme Extension?',
            style: Theme.of(context).appTextTheme.body,
          ),
          const SizedBox(height: 10),
          Text(
            '4. Theme Extension Best Practices',
            style: Theme.of(context).appTextTheme.body,
          ),
          const SizedBox(height: 10),
          Text(
            '5. Dark Mode and Light Mode',
            style: Theme.of(context).appTextTheme.body,
          ),
        ],
      ),
    );
  }
}
