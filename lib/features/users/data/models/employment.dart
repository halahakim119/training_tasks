import 'package:training_tasks/features/users/domain/entities/employement.dart'
    as EmploymentEntity;

class Employment extends EmploymentEntity.Employment {
  const Employment({required String title, required String keySkill})
      : super(title: title, keySkill: keySkill);

  Map<String, dynamic> toJson() {
    return {'title': title, 'key_skill': keySkill};
  }

  factory Employment.fromJson(Map<String, dynamic> json) {
    return Employment(title: json['title'], keySkill: json['key_skill']);
  }
}
