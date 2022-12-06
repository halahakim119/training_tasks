import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/smartphones/data/repositories/smartphones_repository_data.dart';
import 'package:training_tasks/features/smartphones/domain/usecases/get_smartphones_data_usecase.dart';
import 'package:training_tasks/features/smartphones/presentation/logic/cubit/smartphones_cubit.dart';
import 'package:training_tasks/features/smartphones/presentation/view/pages/smartphones_page.dart';

void main() async {
  runApp(SmartphonesMain());
}

class SmartphonesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (_) => SmartphonesCubit(
            getData: GetSmartphonesDataUsecase(
                smartphonesRepository: SmartphonesRepositoryData()),
          ),
          child: SmartphonesPage(),
        ));
  }
}
