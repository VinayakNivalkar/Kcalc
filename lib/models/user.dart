import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum Gender {
  male,
  female
}

@freezed
class User with _$User {
  factory User ({
    int? id,
    required String name,
    required String email,
    required Gender gender,
    required DateTime dateOfBirth,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}