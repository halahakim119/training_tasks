import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/jewelery/data/repositories/jewelery_repository_data.dart';
import 'package:training_tasks/features/jewelery/domain/usecases/get_all_data_usecase.dart';
import 'package:training_tasks/features/jewelery/presentation/logic/cubit/jewelery_cubit.dart';
import 'package:training_tasks/features/jewelery/presentation/view/pages/jewelery_page.dart';

void main() async {
  runApp(JeweleryMain());
}

class JeweleryMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (_) => JeweleryCubit(
            getData: GetAllDataUsecase(
                jeweleryRepositoryDomain: JeweleryRepositoryData()),
          ),
          child: JeweleryPage(),
        ));
  }
}
