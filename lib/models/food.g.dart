// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutrientImpl _$$NutrientImplFromJson(Map<String, dynamic> json) =>
    _$NutrientImpl(
      value: json['value'] as int,
      unit: $enumDecode(_$UnitEnumMap, json['unit']),
      unitPrefix: $enumDecodeNullable(_$UnitPrefixEnumMap, json['unitPrefix']),
    );

Map<String, dynamic> _$$NutrientImplToJson(_$NutrientImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': _$UnitEnumMap[instance.unit]!,
      'unitPrefix': _$UnitPrefixEnumMap[instance.unitPrefix],
    };

const _$UnitEnumMap = {
  Unit.g: 'g',
  Unit.l: 'l',
};

const _$UnitPrefixEnumMap = {
  UnitPrefix.k: 'k',
  UnitPrefix.m: 'm',
};

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      brand: json['brand'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      value: json['value'] as int,
      unit: $enumDecode(_$UnitEnumMap, json['unit']),
      kcal: json['kcal'] as String,
      protein: Nutrient.fromJson(json['protein'] as Map<String, dynamic>),
      fat: Nutrient.fromJson(json['fat'] as Map<String, dynamic>),
      unsaturatedFat: json['unsaturatedFat'] == null
          ? null
          : Nutrient.fromJson(json['unsaturatedFat'] as Map<String, dynamic>),
      saturatedFat: json['saturatedFat'] == null
          ? null
          : Nutrient.fromJson(json['saturatedFat'] as Map<String, dynamic>),
      transFat: json['transFat'] == null
          ? null
          : Nutrient.fromJson(json['transFat'] as Map<String, dynamic>),
      carbohydrates:
          Nutrient.fromJson(json['carbohydrates'] as Map<String, dynamic>),
      sugar: json['sugar'] == null
          ? null
          : Nutrient.fromJson(json['sugar'] as Map<String, dynamic>),
      fiber: json['fiber'] == null
          ? null
          : Nutrient.fromJson(json['fiber'] as Map<String, dynamic>),
      sodium: json['sodium'] == null
          ? null
          : Nutrient.fromJson(json['sodium'] as Map<String, dynamic>),
      cholestrol: json['cholestrol'] == null
          ? null
          : Nutrient.fromJson(json['cholestrol'] as Map<String, dynamic>),
      potassium: json['potassium'] == null
          ? null
          : Nutrient.fromJson(json['potassium'] as Map<String, dynamic>),
      calcium: json['calcium'] == null
          ? null
          : Nutrient.fromJson(json['calcium'] as Map<String, dynamic>),
      magnesium: json['magnesium'] == null
          ? null
          : Nutrient.fromJson(json['magnesium'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'category': instance.category,
      'value': instance.value,
      'unit': _$UnitEnumMap[instance.unit]!,
      'kcal': instance.kcal,
      'protein': instance.protein,
      'fat': instance.fat,
      'unsaturatedFat': instance.unsaturatedFat,
      'saturatedFat': instance.saturatedFat,
      'transFat': instance.transFat,
      'carbohydrates': instance.carbohydrates,
      'sugar': instance.sugar,
      'fiber': instance.fiber,
      'sodium': instance.sodium,
      'cholestrol': instance.cholestrol,
      'potassium': instance.potassium,
      'calcium': instance.calcium,
      'magnesium': instance.magnesium,
    };
