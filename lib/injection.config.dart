// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/articles/domain/usecases/get_all_articles_data_usecase.dart'
    as _i4;
import 'features/articles/presentation/logic/cubit/articles_cubit.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get,
) {
  final gh = _i2.GetItHelper(
    get,
  );
  gh.factory<_i3.ArticlesCubit>(
      () => _i3.ArticlesCubit(getData: get<_i4.GetAllArticlesDataUsecase>()));
  return get;
}
