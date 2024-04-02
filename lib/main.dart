import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/my_app.dart';
import 'slide_navigation/cubit/navigation_cubit.dart';
import 'theme/bloc/bloc/theme_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationCubit()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: const MyApp(),
    ),
  );
}
