import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/football/domain/entities/groups_details_entity.dart';

class GroupsEntity extends Equatable {
  final GroupsDetailsEntity? a;
  final GroupsDetailsEntity? b;
  final GroupsDetailsEntity? c;
  final GroupsDetailsEntity? d;
  final GroupsDetailsEntity? e;
  final GroupsDetailsEntity? f;
  final GroupsDetailsEntity? g;
  final GroupsDetailsEntity? h;
  const GroupsEntity(
      {this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h});

  @override
  List<Object?> get props => [a, b, c, d, e, f, g, h];
}
