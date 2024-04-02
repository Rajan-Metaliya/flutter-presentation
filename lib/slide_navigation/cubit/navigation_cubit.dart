import 'package:bloc/bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

import '../../app/routes/routes.dart';
import '../../app/routes/routes_path.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitialState(RoutePath.sliderList.first));

  void navigateToNext() {
    if (state is! NavigationInitialState) return;

    final currentState = state as NavigationInitialState;

    final index = RoutePath.sliderList.indexOf(currentState.currentRoute);
    if (index + 1 < RoutePath.sliderList.length) {
      final nextRoute = RoutePath.sliderList[index + 1];

      emit(NavigationInitialState(nextRoute));
      state.route.go(nextRoute);
    }
  }

  void navigateToPrevious() {
    if (state is! NavigationInitialState) return;

    final currentState = state as NavigationInitialState;
    final index = RoutePath.sliderList.indexOf(currentState.currentRoute);
    if (index - 1 >= 0) {
      final previousRoute = RoutePath.sliderList[index - 1];

      emit(NavigationInitialState(previousRoute));
      state.route.go(previousRoute);
    }
  }
}
