import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math' as math;

import 'package:training_tasks/features/football/presentation/logic/cubit/football_main_cubit.dart';

class FootballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FootballMainCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: const Text('Football')),
      body: BlocConsumer<FootballMainCubit, FootballMainState>(
          listener: (context, state) {
        state.maybeWhen(
            error: (error) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(error)));
            },
            orElse: () {});
      }, builder: (context, state) {
        return Scaffold(
          body: state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (data) => Center(
              child: ListView.separated(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(data.football!.teams.toString());
                },
                itemCount: data.football!.teams!.length,
                separatorBuilder: (BuildContext context, _) {
                  return Divider();
                },
              ),
            ),
            error: (error) => Center(
              child: Text(error.toString()),
            ),
          ),
        );
      }),
    );
  }
}
