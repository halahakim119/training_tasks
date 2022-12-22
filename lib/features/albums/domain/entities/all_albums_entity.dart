import 'package:equatable/equatable.dart';

import 'albums_entity.dart';

class AllAlbumsEntity extends Equatable {
  final List<AlbumsEntity>? albums;
  const AllAlbumsEntity({this.albums});

  @override
  List<Object?> get props => [albums];
}
