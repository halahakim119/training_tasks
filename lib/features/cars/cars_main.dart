import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_tasks/core/network/network_info.dart';
import 'package:training_tasks/features/cars/data/datasources/cars_remote_data_source.dart';
import 'package:training_tasks/features/cars/data/repositories/cars_repository.dart';

import 'package:training_tasks/features/cars/domain/usecases/get_cars_data_usecase.dart';
import 'package:training_tasks/features/cars/presentation/logic/bloc/cars_bloc.dart';

import 'package:training_tasks/features/cars/presentation/view/pages/cars_pages.dart';

import 'data/datasources/cars_local_data_source.dart';

void main() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences: sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  MyApp({required this.sharedPreferences});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarsBloc(
          getData: GetCarsDataUsecase(
              carsRepository: CarsRepository(
        localDataSource:
            CarsLocalDataSourceImpl(sharedPreferences: sharedPreferences),
        networkInfo: NetworkInfoImpl(InternetConnectionChecker()),
        remoteDataSource: CarsRemoteDataSourceImpl(),
      )))
        ..add(LoadCarsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CarsPage(),
      ),
    );
  }
}
