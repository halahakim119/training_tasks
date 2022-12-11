import 'package:training_tasks/features/football/data/models/groups_details_model.dart';
import 'package:training_tasks/features/football/domain/entities/groups_entity.dart';

class GroupsModel extends GroupsEntity {
  const GroupsModel({
    GroupsDetailsModel? a,
    GroupsDetailsModel? b,
    GroupsDetailsModel? c,
    GroupsDetailsModel? d,
    GroupsDetailsModel? e,
    GroupsDetailsModel? f,
    GroupsDetailsModel? g,
    GroupsDetailsModel? h,
  }) : super(
          a: a,
          b: b,
          c: c,
          d: d,
          e: e,
          f: f,
          g: g,
          h: h,
        );
  GroupsModel copyWith(
      {GroupsDetailsModel? a,
      GroupsDetailsModel? b,
      GroupsDetailsModel? c,
      GroupsDetailsModel? d,
      GroupsDetailsModel? e,
      GroupsDetailsModel? f,
      GroupsDetailsModel? g,
      GroupsDetailsModel? h}) {
    return GroupsModel(a: a, b: b, c: c, d: d, e: e, f: f, g: g, h: h);
  }

  Map<String, Object?> toJson() {
    GroupsDetailsModel? a;
    GroupsDetailsModel? b;
    GroupsDetailsModel? c;
    GroupsDetailsModel? d;
    GroupsDetailsModel? e;
    GroupsDetailsModel? f;
    GroupsDetailsModel? g;
    GroupsDetailsModel? h;
    return {
      'a': a?.toJson(),
      'b': b?.toJson(),
      'c': c?.toJson(),
      'd': d?.toJson(),
      'e': e?.toJson(),
      'f': f?.toJson(),
      'g': g?.toJson(),
      'h': h?.toJson()
    };
  }

  factory GroupsModel.fromJson(Map<String, Object?> json) {
    return GroupsModel(
        a: json['a'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['a'] as Map<String, Object?>),
        b: json['b'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['b'] as Map<String, Object?>),
        c: json['c'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['c'] as Map<String, Object?>),
        d: json['d'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['d'] as Map<String, Object?>),
        e: json['e'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['e'] as Map<String, Object?>),
        f: json['f'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['f'] as Map<String, Object?>),
        g: json['g'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['g'] as Map<String, Object?>),
        h: json['h'] == null
            ? null
            : GroupsDetailsModel.fromJson(json['h'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Groups(
                a:${a.toString()},
b:${b.toString()},
c:${c.toString()},
d:${d.toString()},
e:${e.toString()},
f:${f.toString()},
g:${g.toString()},
h:${h.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is GroupsModel &&
        other.runtimeType == runtimeType &&
        other.a == a &&
        other.b == b &&
        other.c == c &&
        other.d == d &&
        other.e == e &&
        other.f == f &&
        other.g == g &&
        other.h == h;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, a, b, c, d, e, f, g, h);
  }
}
