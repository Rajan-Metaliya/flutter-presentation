import 'package:flutter/material.dart';
import 'package:myapp/widgets/scaffold_wrapper.dart';

class AboutUsSlide extends StatelessWidget {
  const AboutUsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(body: Text('About Us'));
  }
}
