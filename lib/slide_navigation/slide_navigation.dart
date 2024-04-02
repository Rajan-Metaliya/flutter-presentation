import 'package:flutter/material.dart';
import 'package:myapp/slides/about_us/about_us_slide.dart';

class SlideNavigation extends StatelessWidget {
  const SlideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // create previous button
          FloatingActionButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            width: 20,
          ),
          // create next button
          FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsSlide()),
              );
            },
          ),
        ],
      ),
    );
  }
}
