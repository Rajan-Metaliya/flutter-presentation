import 'package:flutter/material.dart';

import 'animation/wave.dart';
import 'animation/wave_config.dart';
import 'ns_logo.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              durations: [
                19440,
                10800,
                6000,
              ],
              heightPercentages: [
                0.25,
                0.26,
                0.28,
              ],
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary.withOpacity(0.5),
                Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ],
            ),
            size: const Size(double.infinity, 60),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
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
          ),
        ],
      ),
    );
  }
}
