import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_tasks/features/random_joke/domain/entities/random_joke_entity.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/usecases/randome_joke_usecase.dart';

part 'joke_cubit.freezed.dart';
part 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  final GetAllJokesDataUsecase getData;
  JokeCubit({required this.getData}) : super(JokeState.loading());

  void fetchData() async {
    emit(JokeState.loading());
    final failureOrJokes = await getData();
    emit(failureOrJokes.fold(
        (failure) => JokeState.error(_mapFailureToMessage(failure)),
        (data) => JokeState.loaded(data)));
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;

    default:
      return "Unexpected Error , Please try again later .";
  }
}
