part of 'cars_bloc.dart';

@immutable
abstract class CarsState extends Equatable {}

class CarsLoadingState extends CarsState {
  @override
  List<CarsModel?> get props => [];
}

class CarsLoadedState extends CarsState {
  final CarsModel cars;

  CarsLoadedState(this.cars);

  @override
  List<CarsModel?> get props => [cars];
}

class carsErrorState extends CarsState {
  final String error;

  carsErrorState(this.error);

  @override
  List<CarsModel?> get props => error as List<CarsModel>;
}
