import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:kcalc/collections/food.dart';
import 'package:kcalc/collections/record.dart';
import 'package:kcalc/providers/nutrition.dart';
import 'package:kcalc/utils/isar_proxy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foodstate.freezed.dart';
part 'foodstate.g.dart';

@freezed
class FoodStateData with _$FoodStateData {
  factory FoodStateData ({
    @Default([]) List<Food> foods,
  }) = _FoodStateData;
}

@riverpod
class FoodState extends _$FoodState {
  @override
  FoodStateData build() {
    return FoodStateData(
      foods: [],
    );
  }

  search(String value) async {
    Isar? isar = proxy.getIsar();

    var foods = await isar!.foods.where().nameWordsElementStartsWith(value).limit(10).findAll();

    state = FoodStateData(
      foods: foods,
    );
  }

  create(Food food) async {
    Isar? isar = proxy.getIsar();

    await isar!.writeTxn(() async {
      await isar.foods.put(food);
    });

    var _foods = state.foods.toList();

    _foods.add(food);

    state = FoodStateData(
      foods: _foods
    );
  }

  log(Food food, int value, DateTime date) async {
    Isar? isar = proxy.getIsar();

    final record = Record()
      ..value = value
      ..recordedAt = date
      ..food.value = food;

    await isar!.writeTxn(() async {
      await isar.records.put(record);
      await record.food.save();
    });

    ref.read(nutritionStateProvider.notifier).updateByDate(date);
  }
}