import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/cars/domain/entities/cars_entity.dart';
import 'package:training_tasks/features/cars/domain/repositories/cars_repository.dart';

class GetCarsDataUsecase {
  final CarsRepository carsRepository;

  GetCarsDataUsecase({required this.carsRepository});

  Future<Either<Failure, CarsEntity>> call() async {
    return await carsRepository.getCarsData();
  }
}
