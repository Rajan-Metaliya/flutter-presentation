import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes/routes.dart';
import '../../app/routes/routes_path.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitialState(RoutePath.sliderList.first));

  final _debouncer = Debouncer(milliseconds: 500);

  void navigateToNext() {
    _debouncer.run(() {
      if (state is! NavigationInitialState) return;

      final currentState = state as NavigationInitialState;

      final index = RoutePath.sliderList.indexOf(currentState.currentRoute);
      if (index + 1 < RoutePath.sliderList.length) {
        final nextRoute = RoutePath.sliderList[index + 1];

        emit(NavigationInitialState(nextRoute));
        state.route.go(nextRoute);
      }
    });
  }

  void navigateToPrevious() {
    _debouncer.run(() {
      if (state is! NavigationInitialState) return;

      final currentState = state as NavigationInitialState;
      final index = RoutePath.sliderList.indexOf(currentState.currentRoute);
      if (index - 1 >= 0) {
        final previousRoute = RoutePath.sliderList[index - 1];

        emit(NavigationInitialState(previousRoute));
        state.route.go(previousRoute);
      }
    });
  }

  // dispose the debounce timer
  @override
  Future<void> close() {
    _debouncer._timer?.cancel();
    return super.close();
  }
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;
  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
