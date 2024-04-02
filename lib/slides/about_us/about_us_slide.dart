import 'package:flutter/material.dart';

import '../../utils/theme/extensions/extension.dart';
import '../../widgets/scaffold_wrapper.dart';

class AboutUsSlide extends StatelessWidget {
  const AboutUsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Text(
        'About Us',
        style: Theme.of(context).appTextTheme.title,
      ),
    );
  }
}
