import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/slides/about_us/about_us_slide.dart';
import 'package:myapp/utils/const/assets_const.dart';

class ScaffoldWrapper extends StatelessWidget {
  const ScaffoldWrapper({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (event) {
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          Navigator.of(context).pop();
        }
        else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
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
                children: [
                  body,
                  // create next previous button
                  Align(
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
                              MaterialPageRoute(
                                  builder: (context) => const AboutUsSlide()),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.network(
                AssetsConst.nsLogoUrl,
                fit: BoxFit.contain,
                placeholderBuilder: (BuildContext context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ),
          )),
    );
  }
}
