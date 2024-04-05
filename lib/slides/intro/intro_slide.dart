import 'package:flutter/material.dart';

import '../../utils/theme/extensions/extension.dart';
import '../../widgets/scaffold_wrapper.dart';

class IntroSlide extends StatelessWidget {
  const IntroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Advanced Theming In Flutter:',
              style: Theme.of(context).appTextTheme.title,
            ),
            Text(
              'Leveraging Extensions for Dynamic UIs',
              style: Theme.of(context).appTextTheme.subTitle,
            ),
          ],
        ),
      ),
    );
  }
}
