import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/jewelery_entity.dart';
import '../../../domain/usecases/get_all_data_usecase.dart';

part 'jewelery_cubit.freezed.dart';
part 'jewelery_state.dart';

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
    
    default:
      return "Unexpected Error , Please try again later .";
  }
}
