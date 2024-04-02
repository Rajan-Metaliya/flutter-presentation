import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/navigation_cubit.dart';

class SlideNavigation extends StatefulWidget {
  const SlideNavigation({super.key});

  @override
  State<SlideNavigation> createState() => _SlideNavigationState();
}

class _SlideNavigationState extends State<SlideNavigation> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state is! NavigationInitialState) return const SizedBox();
          return Focus(
            autofocus: true,
            focusNode: _focusNode,
            onKeyEvent: (node, event) {
              if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                context.read<NavigationCubit>().navigateToNext();
                return KeyEventResult.handled;
              } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                context.read<NavigationCubit>().navigateToPrevious();
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            },
            child: Row(
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
            ),
          );
        },
      ),
    );
  }
}
