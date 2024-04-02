import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../app/routes/routes_path.dart';

class NavigationCubit extends Cubit<GlobalKey<NavigatorState>> {
  // GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String currentRoute = '/';

  NavigationCubit() : super(GlobalKey<NavigatorState>());

  void navigateToNext() {
    for (var route in RoutePath.sliderList) {
      if (route == currentRoute) {
        final index = RoutePath.sliderList.indexOf(route);
        if (index + 1 < RoutePath.sliderList.length) {
          final nextRoute = RoutePath.sliderList[index + 1];
          currentRoute = nextRoute;
          state.currentState!.pushNamed(nextRoute);
        }
      }
    }
  }

  void navigateToPrevious() {
    for (var route in RoutePath.sliderList) {
      if (route == currentRoute) {
        final index = RoutePath.sliderList.indexOf(route);
        if (index - 1 >= 0) {
          final previousRoute = RoutePath.sliderList[index - 1];
          currentRoute = previousRoute;
          state.currentState!.pushNamed(previousRoute);
        }
      }
    }
  }
}
