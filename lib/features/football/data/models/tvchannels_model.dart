import '../../domain/entities/tvchannels_entity.dart';

class TvchannelsModel extends TvchannelsEntity {
  const TvchannelsModel({
    int? id,
    String? name,
    String? icon,
    String? country,
    String? iso2,
    List<String>? lang,
  }) : super(
            id: id,
            name: name,
            icon: icon,
            country: country,
            iso2: iso2,
            lang: lang);
  TvchannelsModel copyWith(
      {int? id,
      String? name,
      String? icon,
      String? country,
      String? iso2,
      List<String>? lang}) {
    return TvchannelsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        icon: icon ?? this.icon,
        country: country ?? this.country,
        iso2: iso2 ?? this.iso2,
        lang: lang ?? this.lang);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'country': country,
      'iso2': iso2,
      'lang': lang
    };
  }

  factory TvchannelsModel.fromJson(Map<String, Object?> json) {
    return TvchannelsModel(
        id: json['id'] == null ? null : json['id'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        icon: json['icon'] == null ? null : json['icon'] as String,
        country: json['country'] == null ? null : json['country'] as String,
        iso2: json['iso2'] == null ? null : json['iso2'] as String,
        lang: json['lang'] == null
            ? null
            : (json['lang'] as List).map((lang) => lang.toString()).toList());
  }

  @override
  String toString() {
    return '''Tvchannels(
                id:$id,
name:$name,
icon:$icon,
country:$country,
iso2:$iso2,
lang:$lang
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is TvchannelsModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.name == name &&
        other.icon == icon &&
        other.country == country &&
        other.iso2 == iso2 &&
        other.lang == lang;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name, icon, country, iso2, lang);
  }
}
