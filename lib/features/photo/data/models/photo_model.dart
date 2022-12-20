import 'package:training_tasks/features/photo/domain/entities/photo_entity.dart';

class PhotoModel extends PhotoEntity {
  const PhotoModel(
      {int? albumId, int? id, String? title, String? url, String? thumbnailUrl})
      : super(
            albumId: albumId,
            id: id,
            title: title,
            url: url,
            thumbnailUrl: thumbnailUrl);
  PhotoModel copyWith(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl}) {
    return PhotoModel(
        albumId: albumId ?? this.albumId,
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl);
  }

  Map<String, Object?> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl
    };
  }

  factory PhotoModel.fromJson(Map<String, Object?> json) {
    return PhotoModel(
        albumId: json['albumId'] == null ? null : json['albumId'] as int,
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String,
        url: json['url'] == null ? null : json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] == null
            ? null
            : json['thumbnailUrl'] as String);
  }

  @override
  String toString() {
    return '''Photo(
                albumId:$albumId,
id:$id,
title:$title,
url:$url,
thumbnailUrl:$thumbnailUrl
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is PhotoModel &&
        other.runtimeType == runtimeType &&
        other.albumId == albumId &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.thumbnailUrl == thumbnailUrl;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, albumId, id, title, url, thumbnailUrl);
  }
}
