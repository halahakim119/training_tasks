import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_tasks/core/error/failure.dart';

import 'package:training_tasks/features/cars/domain/entities/cars_entity.dart';
import 'package:training_tasks/features/cars/domain/usecases/get_cars_data_usecase.dart';

import '../../../../../core/strings/strings.dart';

part 'cars_event.dart';
part 'cars_state.dart';

class CarsBloc extends Bloc<CarsEvent, CarsState> {
  final GetCarsDataUsecase getData;

  CarsBloc({required this.getData}) : super(CarsLoadingState()) {
    on<LoadCarsEvent>((event, emit) async {
      emit(CarsLoadingState());
      final failureOrCars = await getData();
      emit(_mapFailureOrCarsToState(
          failureOrCars as Either<Failure, CarsEntity>));
    });
  }

  CarsState _mapFailureOrCarsToState(Either<Failure, CarsEntity> either) {
    return either.fold(
        (failure) => carsErrorState(_mapFailureToMessage(failure)),
        (carsData) => CarsLoadedState(carsData));
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
