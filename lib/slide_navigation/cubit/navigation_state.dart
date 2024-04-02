part of 'navigation_cubit.dart';

@immutable
sealed class NavigationState {
  final GoRouter route = router;
}

final class NavigationInitialState extends NavigationState {
  final String currentRoute;

  bool get canNavigateToNext => currentRoute != RoutePath.sliderList.last;

  bool get canNavigateToPrevious => currentRoute != RoutePath.sliderList.first;

  NavigationInitialState(
    this.currentRoute,
  ) : super();
}
