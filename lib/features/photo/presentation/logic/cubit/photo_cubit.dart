import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/photo_entity.dart';
import '../../../domain/usecases/get_photo_data_usecase.dart';

part 'photo_cubit.freezed.dart';
part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  final GetPhotoDataUsecase getData;
  PhotoCubit({required this.getData}) : super(PhotoState.loading());
  void fetchData() async {
    emit(PhotoState.loading());
    final failureOrPhoto = await getData();
    emit(failureOrPhoto.fold(
        (failure) => PhotoState.error(_mapFailureToMessage(failure)),
        (data) => PhotoState.loaded(data)));
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
