import 'package:go_router/go_router.dart';

import '../../slides/about_us/about_us_slide.dart';
import '../../slides/content/content_slide.dart';
import '../../slides/intro/intro_slide.dart';
import 'routes_path.dart';

final router = GoRouter(
  initialLocation: RoutePath.sliderList.first,
  routes: [
    GoRoute(
      path: RoutePath.home,
      builder: (context, state) => const IntroSlide(),
    ),
    GoRoute(
      path: RoutePath.aboutUs,
      builder: (context, state) => const AboutUsSlide(),
    ),
    GoRoute(
      path: RoutePath.contentSlide,
      builder: (context, state) => const ContentSlide(),
    ),
  ],
);
