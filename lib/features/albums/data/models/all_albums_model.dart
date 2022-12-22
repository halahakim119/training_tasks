import '../../domain/entities/all_albums_entity.dart';
import 'albums_model.dart';

class AllAlbumsModel extends AllAlbumsEntity {
  const AllAlbumsModel({List<AlbumModel>? albums}) : super(albums: albums);

  Map<String, Object?> toJson() {
    List<AlbumModel>? albums;
    return {
      'albums': albums?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  factory AllAlbumsModel.fromJson(Map<String, Object?> json) {
    return AllAlbumsModel(
        albums: json['albums'] == null
            ? null
            : (json['albums'] as List)
                .map<AlbumModel>(
                    (data) => AlbumModel.fromJson(data as Map<String, Object?>))
                .toList());
  }
}
