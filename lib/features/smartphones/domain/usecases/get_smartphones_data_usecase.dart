import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/smartphones_entity.dart';
import '../repositories/smartphones_repository.dart';

class GetSmartphonesDataUsecase {
  final SmartphonesRepository smartphonesRepository;

  GetSmartphonesDataUsecase({required this.smartphonesRepository});

  Future<Either<Failure, SmartphonesEntity>> call() async {
    return await smartphonesRepository.getSmartphonesData();
  }
}
