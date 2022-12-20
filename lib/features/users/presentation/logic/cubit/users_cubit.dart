import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_data_usecase.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetDataUsecase getData;
  UsersCubit({required this.getData}) : super(UsersState.loading());

  void fetchData() async {
    emit(UsersState.loading());
    final failureOrUsers = await getData();
    emit(failureOrUsers.fold(
        (failure) => UsersState.error(_mapFailureToMessage(failure)),
        (data) => UsersState.loaded(data)));
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
