import 'package:training_tasks/features/users/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getData();
}
