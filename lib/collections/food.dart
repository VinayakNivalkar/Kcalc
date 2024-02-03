import 'package:isar/isar.dart';

part 'food.g.dart';

enum Unit { g, ml }

@collection
class Food {
  Id id = Isar.autoIncrement;
  late String name;
  @Enumerated(EnumType.ordinal)
  late Unit unit;
  late double kcal;
  late double protein;
  late double fat;
  late double carbohydrates;

  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get nameWords => name.split(' ');
}
