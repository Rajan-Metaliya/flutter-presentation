import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/navigation_cubit.dart';

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
              context.read<NavigationCubit>().navigateToPrevious();
            },
          ),
          const SizedBox(
            width: 20,
          ),
          // create next button
          FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: () {
              context.read<NavigationCubit>().navigateToNext();
            },
          ),
        ],
      ),
    );
  }
}
