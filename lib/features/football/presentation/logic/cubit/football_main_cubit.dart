import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/football_main_entity.dart';
import '../../../domain/usecases/get_football_data_usecase.dart';

part 'football_main_cubit.freezed.dart';
part 'football_main_state.dart';

class FootballMainCubit extends Cubit<FootballMainState> {
  final GetFootballDataUsecase getData;
  FootballMainCubit({required this.getData})
      : super(FootballMainState.loading());

  void fetchData() async {
    emit(FootballMainState.loading());
    final failureOrFootball = await getData();
    emit(failureOrFootball.fold(
        (failure) => FootballMainState.error(_mapFailureToMessage(failure)),
        (data) => FootballMainState.loaded(data)));
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
