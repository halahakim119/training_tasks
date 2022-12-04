import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_tasks/core/network/network_info.dart';
import 'package:training_tasks/features/users/data/datasources/user_local_data_source.dart';
import 'package:training_tasks/features/users/data/datasources/user_remote_data_source.dart';

import 'package:training_tasks/features/users/data/repositories/user_repository.dart';
import 'package:training_tasks/features/users/domain/usecases/get_data_usecase.dart';
import 'package:training_tasks/features/users/presentation/bloc/user_bloc.dart';
import 'package:training_tasks/features/users/presentation/pages/users.page.dart';

void main() async {
   SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences:sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

   MyApp({ required this.sharedPreferences});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc(getData: GetDataUsecase(UserRepository(
        localDataSource: UserLocalDataSourceImpl(sharedPreferences: sharedPreferences),
        networkInfo: NetworkInfoImpl(InternetConnectionChecker()),
        remoteDataSource: UserRemoteDataSourceImpl(),)))
        ..add(LoadUserEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UsersPage(),
      ),
    );
  }
}
