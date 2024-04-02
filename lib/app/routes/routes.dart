import 'package:flutter/material.dart';

import '../../slides/about_us/about_us_slide.dart';
import '../../slides/content/content_slide.dart';
import '../../slides/intro/intro_slide.dart';
import 'routes_path.dart';

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
  return {
    RoutePath.home: (context) => const IntroSlide(),
    RoutePath.aboutUs: (context) => const AboutUsSlide(),
    RoutePath.contentSlide: (context) => const ContentSlide(),
  };
}
