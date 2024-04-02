import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../app/routes/routes_path.dart';

class NavigationCubit extends Cubit<GlobalKey<NavigatorState>> {
  // GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String currentRoute = '/';

  NavigationCubit() : super(GlobalKey<NavigatorState>());

  void navigateToNext() {
    final index = RoutePath.sliderList.indexOf(currentRoute);
    if (index + 1 < RoutePath.sliderList.length) {
      final nextRoute = RoutePath.sliderList[index + 1];
      print('Routeing $currentRoute --> $nextRoute ');
      currentRoute = nextRoute;
      state.currentState!.pushNamed(nextRoute);
    } else {
      print('Routeing $currentRoute Already at the end of the list');
    }
  }

  void navigateToPrevious() {
    final index = RoutePath.sliderList.indexOf(currentRoute);
    if (index - 1 >= 0) {
      final previousRoute = RoutePath.sliderList[index - 1];
      print('Routeing $currentRoute <-- $previousRoute ');
      currentRoute = previousRoute;
      state.currentState!.pop();
    } else {
      print('Routeing $currentRoute Already at the start of the list');
    }
  }
}
