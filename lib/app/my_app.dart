import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../slide_navigation/cubit/navigation_cubit.dart';
import '../theme/bloc/bloc/theme_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ThemeBloc>().add(
            ThemeInitEvent(
              brightness: MediaQuery.of(context).platformBrightness,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter App',
      theme: context.watch<ThemeBloc>().state.themeData,
      routerConfig: context.read<NavigationCubit>().state.route,
      themeAnimationCurve: Curves.easeInCirc,
      themeAnimationDuration: const Duration(milliseconds: 500),
      debugShowCheckedModeBanner: false,
    );
  }
}
