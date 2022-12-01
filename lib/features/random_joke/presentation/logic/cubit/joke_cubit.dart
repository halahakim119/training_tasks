import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_tasks/features/random_joke/data/models/random_joke.dart';

import 'dart:async';

import 'package:training_tasks/features/random_joke/data/network/joke_repo.dart';


part 'joke_state.dart';
part 'joke_cubit.freezed.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeRepo repo;
  JokeCubit({required this.repo}) : super(JokeState.loading());

  void fetchData() async {
    emit(JokeState.loading());

    try {
      final data = await repo.getJoke();
      emit(JokeState.loaded(data));
    } catch (e) {
      emit(JokeState.error(e.toString()));
    }
  }
}
