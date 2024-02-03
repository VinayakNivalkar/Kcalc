import 'dart:io';

import 'package:isar/isar.dart';
import 'package:kcalc/collections/food.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/collections/record.dart';
import 'package:kcalc/collections/user.dart';
import 'package:path_provider/path_provider.dart';

class IsarProxy {
  Directory? dir;
  Isar? isar;

  Future<void> initIsar() async {
    dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [UserSchema, GoalSchema, FoodSchema, RecordSchema],
      directory: dir!.path,
    );
  }

  Isar? getIsar() {
    return isar;
  }
}

final proxy = IsarProxy();
