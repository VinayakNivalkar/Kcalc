import 'package:isar/isar.dart';

part 'goal.g.dart';

enum GoalOpts {
  maintainWeight,
  gainWeight,
  loseWeight
}

@collection
class Goal {
  Id id = Isar.autoIncrement;

  late DateTime createdAt;

  @Enumerated(EnumType.ordinal)
  late GoalOpts goal;
}