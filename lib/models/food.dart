import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

enum Unit { g, l }

enum UnitPrefix { k, m }

@freezed
class Nutrient with _$Nutrient {
  factory Nutrient ({
    required int value,
    required Unit unit,
    UnitPrefix? unitPrefix,
  }) = _Nutrient;

  factory Nutrient.fromJson(Map<String, dynamic> json) => _$NutrientFromJson(json);
}

@freezed
class Food with _$Food {
  factory Food({
    int? id,
    required String name,
    required String brand,
    required String description,
    required String category,
    required int value,
    required Unit unit,
    required String kcal,
    required Nutrient protein,
    required Nutrient fat,
    Nutrient? unsaturatedFat,
    Nutrient? saturatedFat,
    Nutrient? transFat,
    required Nutrient carbohydrates,
    Nutrient? sugar,
    Nutrient? fiber,
    Nutrient? sodium,
    Nutrient? cholestrol,
    Nutrient? potassium,
    Nutrient? calcium,
    Nutrient? magnesium,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}