import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'slide_navigation/cubit/navigation_cubit.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Flutter App',
            theme: AppTheme.themeData,
            darkTheme: AppTheme.darkThemeData,
            routerConfig: context.read<NavigationCubit>().state.route,
          );
        },
      ),
    );
  }
}
