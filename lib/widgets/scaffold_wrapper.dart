import 'package:flutter/material.dart';

import '../slide_navigation/slide_navigation.dart';
import '../theme/theme_button.dart';
import 'ns_logo.dart';

class ScaffoldWrapper extends StatefulWidget {
  const ScaffoldWrapper({super.key, required this.body});
  final Widget body;

  @override
  State<ScaffoldWrapper> createState() => _ScaffoldWrapperState();
}

class _ScaffoldWrapperState extends State<ScaffoldWrapper> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              widget.body,
              const SlideNavigation(),
              const ThemeButtonView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        alignment: Alignment.centerRight,
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Hero(
          tag: const ObjectKey('nsLogo'),
          child: Container(
            color: Theme.of(context).colorScheme.background,
            padding: const EdgeInsets.only(right: 10),
            child: const NsLogoWidget(),
          ),
        ),
      ),
    );
  }
}
