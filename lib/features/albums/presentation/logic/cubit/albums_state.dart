part of 'albums_cubit.dart';

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState.loading() = _Loading;
  const factory AlbumsState.loaded(AllAlbumsEntity albums) = _Loaded;
  const factory AlbumsState.error(String error) = _Error;
}
