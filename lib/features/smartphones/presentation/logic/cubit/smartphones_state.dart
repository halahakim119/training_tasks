part of 'smartphones_cubit.dart';

@freezed
class SmartphonesState with _$SmartphonesState {
  const factory SmartphonesState.loading() = _Loading;
  const factory SmartphonesState.loaded(SmartphonesModel smartphones) = _Loaded;
  const factory SmartphonesState.error(String error) = _Error;
}
