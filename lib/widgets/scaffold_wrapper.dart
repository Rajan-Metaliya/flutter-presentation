import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/slide_navigation/slide_navigation.dart';
import 'package:myapp/slides/about_us/about_us_slide.dart';
import 'package:myapp/widgets/ns_logo.dart';

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
    return KeyboardListener(
      focusNode: focusNode,
      onKeyEvent: (event) {
        print(event.logicalKey);
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          Navigator.of(context).pop();
        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutUsSlide()),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [widget.body, const SlideNavigation()],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const NsLogoWidget(),
        ),
      ),
    );
  }
}
