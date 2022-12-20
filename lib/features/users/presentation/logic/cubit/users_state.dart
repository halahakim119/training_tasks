part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loading() = _Loading;
  const factory UsersState.loaded(List<UsersEntity> users) = _Loaded;
  const factory UsersState.error(String error) = _Error;
}
