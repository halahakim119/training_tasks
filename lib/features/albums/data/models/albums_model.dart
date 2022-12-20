import '../../domain/entities/albums_entity.dart';

class AlbumModel extends AlbumsEntity {
  const AlbumModel({int? userId, int? id, String? title})
      : super(userId: userId, id: id, title: title);

  Map<String, Object?> toJson() {
    return {'userId': userId, 'id': id, 'title': title};
  }

  factory AlbumModel.fromJson(Map<String, Object?> json) {
    return AlbumModel(
        userId: json['userId'] == null ? null : json['userId'] as int,
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String);
  }
}
