import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/smartphones_entity.dart';
import '../../../domain/usecases/get_smartphones_data_usecase.dart';

part 'smartphones_cubit.freezed.dart';
part 'smartphones_state.dart';

class SmartphonesCubit extends Cubit<SmartphonesState> {
  final GetSmartphonesDataUsecase getData;

  SmartphonesCubit({required this.getData}) : super(SmartphonesState.loading());

  void fetchData() async {
    emit(SmartphonesState.loading());
    final failureOrCars = await getData();
    emit(_mapFailureOrCarsToState(
        failureOrCars as Either<Failure, SmartphonesEntity>));
  }
}

SmartphonesState _mapFailureOrCarsToState(
    Either<Failure, SmartphonesEntity> either) {
  return either.fold(
      (failure) => SmartphonesState.error(_mapFailureToMessage(failure)),
      (carsData) => SmartphonesState.loaded(carsData));
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;

    default:
      return "Unexpected Error , Please try again later .";
  }
}
