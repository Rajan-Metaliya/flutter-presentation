import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'slide_navigation/cubit/navigation_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, GoRouter>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 58, 166, 183),
              ),
              useMaterial3: true,
            ),
            routerConfig: state,
          );
        },
      ),
    );
  }
}
