import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/navigation_cubit.dart';

class SlideNavigation extends StatelessWidget {
  const SlideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state is! NavigationInitialState) return const SizedBox();
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.canNavigateToPrevious)
                // create previous button
                FloatingActionButton(
                  heroTag: 'back',
                  child: const Icon(Icons.arrow_back),
                  onPressed: () {
                    context.read<NavigationCubit>().navigateToPrevious();
                  },
                ),
              const SizedBox(
                width: 20,
              ),
              // create next button
              if (state.canNavigateToNext)
                FloatingActionButton(
                  heroTag: 'next',
                  child: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    context.read<NavigationCubit>().navigateToNext();
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
