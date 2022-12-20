import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/cars_entity.dart';
import '../../../domain/usecases/get_cars_data_usecase.dart';

part 'cars_cubit.freezed.dart';
part 'cars_state.dart';

class CarsCubit extends Cubit<CarsState> {
  final GetCarsDataUsecase getData;
  CarsCubit({required this.getData}) : super(CarsState.loading());

  void fetchData() async {
    emit(CarsState.loading());
    final failureOrCars = await getData();
    emit(failureOrCars.fold(
        (failure) => CarsState.error(_mapFailureToMessage(failure)),
        (data) => CarsState.loaded(data)));
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
