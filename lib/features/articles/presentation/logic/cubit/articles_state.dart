part of 'articles_cubit.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const factory ArticlesState.loading() = _Loading;
  const factory ArticlesState.loaded(ArticlesMainEntity articlesMainEntity) =
      _Loaded;
  const factory ArticlesState.error(String error) = _Error;
}
