import 'dart:io';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/collections/user.dart';
import 'package:kcalc/providers/initstate.dart';
import 'package:kcalc/utils/isar_proxy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'init.g.dart';
part 'init.freezed.dart';

@freezed
class InitData with _$InitData {
  factory InitData ({
    @Default(false) bool isInitDone,
    User? user,
    Goal? goal,
  }) = _InitData;
}

@riverpod
class Init extends _$Init {
  @override
  FutureOr<InitData> build() async {
    var isar = proxy.getIsar();

    final user = await isar!.users.where().findFirst();

    final goal = await isar.goals.where().sortByCreatedAtDesc().findFirst();

    Future.delayed(Duration(seconds: 1), () => FlutterNativeSplash.remove());

    return InitData(
      isInitDone: user != null && goal != null,
      user: user,
      goal: goal,
    );
  }

  Future<void> initRegister(InitStateData val) async {
    final user = User()
      ..name = val.name!
      ..gender = val.gender!
      ..dateOfBirth = val.dateOfBirth!
      ..height = val.height!
      ..weight = val.weight!;

    final goal = Goal()
      ..goal = val.goal!
      ..createdAt = DateTime.now();

    Isar? isar = proxy.getIsar();

    await isar!.writeTxn(() async {
      await isar.users.put(user);
      await isar.goals.put(goal);
    });

    state = AsyncValue.data(InitData(
      isInitDone: true,
      user: user,
      goal: goal,
    ));
  }

  Future<void> resetRegister() async {
    Isar? isar = proxy.getIsar();

    await isar!.writeTxn(() async {
      await isar.users.where().deleteAll();
      await isar.goals.where().deleteAll();
    });

    state = AsyncValue.data(InitData(
      isInitDone: false,
      user: null,
      goal: null,
    ));
  }
}
