import 'package:flutter/material.dart';

import '../utils/const/assets_const.dart';

class NsLogoWidget extends StatelessWidget {
  const NsLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsConst.nsLogo, height: 40),
        ),
        RichText(
          text: TextSpan(
            text: 'Non',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            children: [
              TextSpan(
                text: 'S',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
              ),
              const TextSpan(
                text: 'top',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
