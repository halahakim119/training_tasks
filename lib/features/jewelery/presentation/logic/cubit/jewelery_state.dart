part of 'jewelery_cubit.dart';

@freezed
class JeweleryState with _$JeweleryState {
  const factory JeweleryState.loading() = _Loading;
  const factory JeweleryState.loaded(List<JeweleryEntity> jewelery) = _Loaded;
  const factory JeweleryState.error(String error) = _Error;
}
