part of 'football_main_cubit.dart';

@freezed
class FootballMainState with _$FootballMainState {
  const factory FootballMainState.loading() = _Loading;
  const factory FootballMainState.loaded(FootballMainEntity football) =
      _Loaded;
  const factory FootballMainState.error(String error) = _Error;
}
