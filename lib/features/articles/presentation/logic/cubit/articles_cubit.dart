import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/strings.dart';
import '../../../domain/entities/articles_main_entity.dart';
import '../../../domain/usecases/get_all_articles_data_usecase.dart';

part 'articles_cubit.freezed.dart';
part 'articles_state.dart';
@injectable
class ArticlesCubit extends Cubit<ArticlesState> {
  final GetAllArticlesDataUsecase getData;
  ArticlesCubit({required this.getData}) : super(ArticlesState.loading());

  void fetchData() async {
    emit(ArticlesState.loading());
    final failureOrArticles = await getData();
    emit(failureOrArticles.fold(
        (failure) => ArticlesState.error(_mapFailureToMessage(failure)),
        (data) => ArticlesState.loaded(data)));
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
