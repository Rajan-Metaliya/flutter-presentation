import 'package:flutter/material.dart';

import '../../widgets/scaffold_wrapper.dart';

class AboutUsSlide extends StatelessWidget {
  const AboutUsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: const Text('About Us'),
      ),
    );
  }
}
