import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/routes/routes.dart';
import 'app/routes/routes_path.dart';
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
      child: BlocBuilder<NavigationCubit, GlobalKey<NavigatorState>>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 58, 166, 183),
              ),
              useMaterial3: true,
            ),
            navigatorKey: state,
            initialRoute: RoutePath.sliderList.first,
            routes: getRoutes(context),
          );
        },
      ),
    );
  }
}
