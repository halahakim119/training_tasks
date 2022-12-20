part of 'photo_cubit.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.loading() = _Loading;
  const factory PhotoState.loaded(List<PhotoEntity> photo) = _Loaded;
  const factory PhotoState.error(String error) = _Error;
}
