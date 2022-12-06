import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_tasks/features/smartphones/domain/usecases/get_smartphones_data_usecase.dart';
import 'dart:async';
import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../data/models/smartphones_model.dart';

part 'smartphones_state.dart';
part 'smartphones_cubit.freezed.dart';

class SmartphonesCubit extends Cubit<SmartphonesState> {
  final GetSmartphonesDataUsecase getData;

  SmartphonesCubit({required this.getData}) : super(SmartphonesState.loading());

  void fetchData() async {
    emit(SmartphonesState.loading());
    final failureOrCars = await getData();
    emit(_mapFailureOrCarsToState(
        failureOrCars as Either<Failure, SmartphonesModel>));
  }
}

SmartphonesState _mapFailureOrCarsToState(
    Either<Failure, SmartphonesModel> either) {
  return either.fold(
      (failure) => SmartphonesState.error(_mapFailureToMessage(failure)),
      (carsData) => SmartphonesState.loaded(carsData));
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
