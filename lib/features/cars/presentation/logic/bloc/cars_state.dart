part of 'cars_bloc.dart';

@immutable
abstract class CarsState extends Equatable {}

class CarsLoadingState extends CarsState {
  @override
  List<CarsEntity?> get props => [];
}

class CarsLoadedState extends CarsState {
  final CarsEntity cars;

  CarsLoadedState(this.cars);

  @override
  List<CarsEntity?> get props => [cars];
}

class carsErrorState extends CarsState {
  final String error;

  carsErrorState(this.error);

  @override
  List<CarsEntity?> get props => error as List<CarsEntity>;
}
