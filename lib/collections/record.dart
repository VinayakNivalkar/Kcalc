import 'package:isar/isar.dart';
import 'package:kcalc/collections/food.dart';

part 'record.g.dart';

@collection
class Record {
  Id id = Isar.autoIncrement;
  late DateTime recordedAt;
  late int value;
  final food = IsarLink<Food>();
}