import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/core/strings/strings.dart';
import 'package:training_tasks/features/users/domain/entities/user.dart';

import 'package:training_tasks/features/users/domain/usecases/get_data_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetDataUsecase getData;

  UserBloc({required this.getData}) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      final failureOrUser = await getData();
      emit(_mapFailureOrUsersToState(
          failureOrUser as Either<Failure, List<User>>));
    });
  }

  UserState _mapFailureOrUsersToState(Either<Failure, List<User>> either) {
    return either.fold(
        (failure) => userErrorState(_mapFailureToMessage(failure)),
        (usersData) => UserLoadedState(usersData));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case EmptyCacheFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}
