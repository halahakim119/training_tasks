import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/smartphones/domain/entities/smartphones_entity.dart';
import 'package:training_tasks/features/smartphones/domain/repositories/smartphones_repository.dart';

class GetSmartphonesDataUsecase {
  final SmartphonesRepository smartphonesRepository;

  GetSmartphonesDataUsecase({required this.smartphonesRepository});

  Future<Either<Failure, SmartphonesEntity>> call() async {
    return await smartphonesRepository.getSmartphonesData();
  }
}
