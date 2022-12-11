import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/football/data/repositories/football_repository_data.dart';
import 'package:training_tasks/features/football/domain/usecases/get_football_data_usecase.dart';
import 'package:training_tasks/features/football/presentation/logic/cubit/football_main_cubit.dart';
import 'package:training_tasks/features/football/presentation/view/pages/football_page.dart';

void main() async {
  runApp(FootballMain());
}

class FootballMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (_) => FootballMainCubit(
            getData: GetFootballDataUsecase(
              footballRepositoryDomain: FootballRepositoryData(),
            ),
          ),
          child: FootballPage(),
        ));
  }
}
