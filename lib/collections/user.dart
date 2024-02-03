import 'package:isar/isar.dart';

part 'user.g.dart';

enum Gender {
  male,
  female
}

@collection
class User {
  Id id = Isar.autoIncrement;

  late String name;
  @Enumerated(EnumType.ordinal)
  late Gender gender;
  late DateTime dateOfBirth;

  late double height;
  late double weight;
}