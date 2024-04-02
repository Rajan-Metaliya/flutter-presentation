import 'package:bloc/bloc.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes/routes.dart';
import '../../app/routes/routes_path.dart';

class NavigationCubit extends Cubit<GoRouter> {
  String currentRoute = '/';

  NavigationCubit() : super(router);

  void navigateToNext() {
    final index = RoutePath.sliderList.indexOf(currentRoute);
    if (index + 1 < RoutePath.sliderList.length) {
      final nextRoute = RoutePath.sliderList[index + 1];

      currentRoute = nextRoute;
      state.go(nextRoute);
    }
  }

  void navigateToPrevious() {
    final index = RoutePath.sliderList.indexOf(currentRoute);
    if (index - 1 >= 0) {
      final previousRoute = RoutePath.sliderList[index - 1];

      currentRoute = previousRoute;
      state.go(previousRoute);
    }
  }
}
