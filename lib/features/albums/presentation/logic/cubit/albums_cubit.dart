import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/all_albums_entity.dart';
import '../../../domain/usecases/get_all_data_usecase.dart';

part 'albums_cubit.freezed.dart';
part 'albums_state.dart';

class AlbumsCubit extends Cubit<AlbumsState> {
  final GetAllDataUsecase getData;
  AlbumsCubit({required this.getData}) : super(AlbumsState.loading());
  void call() async {
    var failureOrAlbums = await getData();
    emit(failureOrAlbums.fold(
        (failure) => AlbumsState.error(_mapFailureToMessage(failure)),
        (data) => AlbumsState.loaded(data)));
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
