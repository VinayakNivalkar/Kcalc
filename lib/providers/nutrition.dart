import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:age_calculator/age_calculator.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/collections/record.dart';
import 'package:kcalc/collections/user.dart';
import 'package:kcalc/utils/carbohydrates.dart';
import 'package:kcalc/utils/consumption.dart';
import 'package:kcalc/utils/fat.dart';
import 'package:kcalc/utils/isar_proxy.dart';
import 'package:kcalc/utils/mifflinStJeor.dart';
import 'package:kcalc/utils/protein.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nutrition.g.dart';
part 'nutrition.freezed.dart';

@freezed
class NutritionStateData with _$NutritionStateData {
  factory NutritionStateData ({
    DateTime? date,
    double? reqKcal,
    double? consumedKcal,
    double? reqProtein,
    double? consumedProtein,
    double? reqFat,
    double? consumedFat,
    double? reqCarbohydrates,
    double? consumedCarbohydrates,
  }) = _NutritionStateData;
}

@riverpod
class NutritionState extends _$NutritionState {
  @override
  FutureOr<NutritionStateData> build() async {
    Isar? isar = proxy.getIsar();

    DateTime date = DateTime.now();
    
    DateTime dateStart = DateTime(date.year, date.month, date.day, 0);
    DateTime dateEnd = DateTime(date.year, date.month, date.day, 0).add(const Duration(days: 1));

    final user = await isar!.users.where().findFirst();

    final goal = await isar.goals.where().filter().createdAtLessThan(date).sortByCreatedAtDesc().findFirst();

    final records = await isar.records.filter().recordedAtBetween(dateStart, dateEnd).findAll();

    int age = AgeCalculator.age(user!.dateOfBirth).years;

    double reqKcal = getBMR(user.height, user.weight, double.parse(age.toString()), user.gender);

    if (goal?.goal == GoalOpts.gainWeight) {
      reqKcal = reqKcal + 500;
    }
    if (goal?.goal == GoalOpts.loseWeight) {
      reqKcal = reqKcal - 500;
    }

    double reqProtein = getProtein(user.weight);
    double reqFat = getFat(user.weight);
    double reqCarbohydrates = getCarbohydrates(user.weight);

    return NutritionStateData(
      date: date,
      reqKcal: reqKcal,
      consumedKcal: records.isEmpty ? 0 : getKcalConsumption(records),
      reqProtein: reqProtein,
      consumedProtein: records.isEmpty ? 0 : getProteinConsumption(records),
      reqFat: reqFat,
      consumedFat: records.isEmpty ? 0 : getFatConsumption(records),
      reqCarbohydrates: reqCarbohydrates,
      consumedCarbohydrates: records.isEmpty ? 0 : getCarbohydrateConsumption(records),
    );
  }

  void updateByDate(DateTime date) async {
    Isar? isar = proxy.getIsar();

    DateTime dateStart = DateTime(date.year, date.month, date.day, 0);
    DateTime dateEnd = DateTime(date.year, date.month, date.day, 0).add(const Duration(days: 1));

    final user = await isar!.users.where().findFirst();

    final goal = await isar.goals.where().filter().createdAtLessThan(date).sortByCreatedAtDesc().findFirst();

    final records = await isar.records.filter().recordedAtBetween(dateStart, dateEnd).findAll();

    int age = AgeCalculator.age(user!.dateOfBirth).years;

    double reqKcal = getBMR(user.height, user.weight, double.parse(age.toString()), user.gender);

    if (goal?.goal == GoalOpts.gainWeight) {
      reqKcal = reqKcal + 500;
    }
    if (goal?.goal == GoalOpts.loseWeight) {
      reqKcal = reqKcal - 500;
    }

    double reqProtein = getProtein(user.weight);
    double reqFat = getFat(user.weight);
    double reqCarbohydrates = getCarbohydrates(user.weight);

    state = AsyncValue.data(NutritionStateData(
      date: date,
      reqKcal: reqKcal,
      consumedKcal: records.isEmpty ? 0 : getKcalConsumption(records),
      reqProtein: reqProtein,
      consumedProtein: records.isEmpty ? 0 : getProteinConsumption(records),
      reqFat: reqFat,
      consumedFat: records.isEmpty ? 0 : getFatConsumption(records),
      reqCarbohydrates: reqCarbohydrates,
      consumedCarbohydrates: records.isEmpty ? 0 : getCarbohydrateConsumption(records),
    ));
  }
}
