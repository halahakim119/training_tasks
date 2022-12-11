import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/football/domain/entities/football_entity.dart';

class FootballMainEntity extends Equatable {
  final FootballEntity? football;
  const FootballMainEntity({this.football});

  @override
  List<Object?> get props => [football];
}
