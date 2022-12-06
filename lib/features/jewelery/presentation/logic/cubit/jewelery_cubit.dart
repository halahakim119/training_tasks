import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:training_tasks/features/jewelery/domain/entities/jewelery_entity.dart';
import 'package:training_tasks/features/jewelery/domain/usecases/get_all_data_usecase.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
part 'jewelery_state.dart';
part 'jewelery_cubit.freezed.dart';

class JeweleryCubit extends Cubit<JeweleryState> {
  final GetAllDataUsecase getData;
  JeweleryCubit({required this.getData}) : super(JeweleryState.loading());

  void fetchData() async {
    emit(JeweleryState.loading());
    final failureOrJewelery = await getData();
    emit(failureOrJewelery.fold(
        (failure) => JeweleryState.error(_mapFailureToMessage(failure)),
        (data) => JeweleryState.loaded(data)));
  }
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
