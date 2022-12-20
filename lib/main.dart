import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/tasks_home/tasks_screen.dart';
import 'features/albums/presentation/logic/cubit/albums_cubit.dart';
import 'features/articles/presentation/logic/cubit/articles_cubit.dart';
import 'features/cars/presentation/logic/cubit/cars_cubit.dart';
import 'features/football/presentation/logic/cubit/football_main_cubit.dart';
import 'features/jewelery/presentation/logic/cubit/jewelery_cubit.dart';
import 'features/photo/presentation/logic/cubit/photo_cubit.dart';
import 'features/random_joke/presentation/logic/cubit/joke_cubit.dart';
import 'features/smartphones/presentation/logic/cubit/smartphones_cubit.dart';
import 'features/users/presentation/logic/cubit/users_cubit.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<SmartphonesCubit>()),
        BlocProvider(create: (_) => di.sl<JeweleryCubit>()),
        BlocProvider(create: (_) => di.sl<FootballMainCubit>()),
        BlocProvider(create: (_) => di.sl<AlbumsCubit>()),
        BlocProvider(create: (_) => di.sl<ArticlesCubit>()),
        BlocProvider(create: (_) => di.sl<CarsCubit>()),
        BlocProvider(create: (_) => di.sl<UsersCubit>()),
        BlocProvider(create: (_) => di.sl<PhotoCubit>()),
        BlocProvider(create: (_) => di.sl<JokeCubit>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
