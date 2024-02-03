import 'package:kcalc/collections/record.dart';

double getKcalConsumption(List<Record> records) {
  double val = 0;

  for (final record in records) {
    var percent = (record.food.value!.kcal / 100) * 100;
    var est_val = (percent / 100) * record.value;
    val = val + est_val;
  }

  return val;
}

double getProteinConsumption(List<Record> records) {
  double val = 0;

  for (final record in records) {
    var percent = (record.food.value!.protein / 100) * 100;
    var est_val = (percent / 100) * record.value;
    val = val + est_val;
  }

  return val;
}

double getFatConsumption(List<Record> records) {
  double val = 0;

  for (final record in records) {
    var percent = (record.food.value!.fat / 100) * 100;
    var est_val = (percent / 100) * record.value;
    val = val + est_val;
  }

  return val;
}

double getCarbohydrateConsumption(List<Record> records) {
  double val = 0;

  for (final record in records) {
    var percent = (record.food.value!.carbohydrates / 100) * 100;
    var est_val = (percent / 100) * record.value;
    val = val + est_val;
  }

  return val;
}
