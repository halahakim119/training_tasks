part of 'cars_cubit.dart';

@freezed
class CarsState with _$CarsState {
  const factory CarsState.loading() = _Loading;
  const factory CarsState.loaded(CarsEntity carsEntity) = _Loaded;
  const factory CarsState.error(String error) = _Error;
}
