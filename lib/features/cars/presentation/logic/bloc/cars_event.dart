part of 'cars_bloc.dart';

@immutable
abstract class CarsEvent extends Equatable {
  const CarsEvent();
}

class LoadCarsEvent extends CarsEvent {
  @override
  List<CarsModel?> get props => [];
}
