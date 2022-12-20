import '../../domain/entities/source_entity.dart';

class SourceModel extends SourceEntity{
   
  const SourceModel({dynamic id,
   String? name}):super(id: id,name: name);

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name};
  }

  factory SourceModel.fromJson(Map<String, Object?> json) {
    return SourceModel(
        id: json['id'] as dynamic,
        name: json['name'] == null ? null : json['name'] as String);
  }
}
