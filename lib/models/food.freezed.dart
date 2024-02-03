// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrient _$NutrientFromJson(Map<String, dynamic> json) {
  return _Nutrient.fromJson(json);
}

/// @nodoc
mixin _$Nutrient {
  int get value => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  UnitPrefix? get unitPrefix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientCopyWith<Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientCopyWith<$Res> {
  factory $NutrientCopyWith(Nutrient value, $Res Function(Nutrient) then) =
      _$NutrientCopyWithImpl<$Res, Nutrient>;
  @useResult
  $Res call({int value, Unit unit, UnitPrefix? unitPrefix});
}

/// @nodoc
class _$NutrientCopyWithImpl<$Res, $Val extends Nutrient>
    implements $NutrientCopyWith<$Res> {
  _$NutrientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
    Object? unitPrefix = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      unitPrefix: freezed == unitPrefix
          ? _value.unitPrefix
          : unitPrefix // ignore: cast_nullable_to_non_nullable
              as UnitPrefix?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrientImplCopyWith<$Res>
    implements $NutrientCopyWith<$Res> {
  factory _$$NutrientImplCopyWith(
          _$NutrientImpl value, $Res Function(_$NutrientImpl) then) =
      __$$NutrientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, Unit unit, UnitPrefix? unitPrefix});
}

/// @nodoc
class __$$NutrientImplCopyWithImpl<$Res>
    extends _$NutrientCopyWithImpl<$Res, _$NutrientImpl>
    implements _$$NutrientImplCopyWith<$Res> {
  __$$NutrientImplCopyWithImpl(
      _$NutrientImpl _value, $Res Function(_$NutrientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
    Object? unitPrefix = freezed,
  }) {
    return _then(_$NutrientImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      unitPrefix: freezed == unitPrefix
          ? _value.unitPrefix
          : unitPrefix // ignore: cast_nullable_to_non_nullable
              as UnitPrefix?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutrientImpl implements _Nutrient {
  _$NutrientImpl({required this.value, required this.unit, this.unitPrefix});

  factory _$NutrientImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutrientImplFromJson(json);

  @override
  final int value;
  @override
  final Unit unit;
  @override
  final UnitPrefix? unitPrefix;

  @override
  String toString() {
    return 'Nutrient(value: $value, unit: $unit, unitPrefix: $unitPrefix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrientImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrefix, unitPrefix) ||
                other.unitPrefix == unitPrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit, unitPrefix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrientImplCopyWith<_$NutrientImpl> get copyWith =>
      __$$NutrientImplCopyWithImpl<_$NutrientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutrientImplToJson(
      this,
    );
  }
}

abstract class _Nutrient implements Nutrient {
  factory _Nutrient(
      {required final int value,
      required final Unit unit,
      final UnitPrefix? unitPrefix}) = _$NutrientImpl;

  factory _Nutrient.fromJson(Map<String, dynamic> json) =
      _$NutrientImpl.fromJson;

  @override
  int get value;
  @override
  Unit get unit;
  @override
  UnitPrefix? get unitPrefix;
  @override
  @JsonKey(ignore: true)
  _$$NutrientImplCopyWith<_$NutrientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  String get kcal => throw _privateConstructorUsedError;
  Nutrient get protein => throw _privateConstructorUsedError;
  Nutrient get fat => throw _privateConstructorUsedError;
  Nutrient? get unsaturatedFat => throw _privateConstructorUsedError;
  Nutrient? get saturatedFat => throw _privateConstructorUsedError;
  Nutrient? get transFat => throw _privateConstructorUsedError;
  Nutrient get carbohydrates => throw _privateConstructorUsedError;
  Nutrient? get sugar => throw _privateConstructorUsedError;
  Nutrient? get fiber => throw _privateConstructorUsedError;
  Nutrient? get sodium => throw _privateConstructorUsedError;
  Nutrient? get cholestrol => throw _privateConstructorUsedError;
  Nutrient? get potassium => throw _privateConstructorUsedError;
  Nutrient? get calcium => throw _privateConstructorUsedError;
  Nutrient? get magnesium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String brand,
      String description,
      String category,
      int value,
      Unit unit,
      String kcal,
      Nutrient protein,
      Nutrient fat,
      Nutrient? unsaturatedFat,
      Nutrient? saturatedFat,
      Nutrient? transFat,
      Nutrient carbohydrates,
      Nutrient? sugar,
      Nutrient? fiber,
      Nutrient? sodium,
      Nutrient? cholestrol,
      Nutrient? potassium,
      Nutrient? calcium,
      Nutrient? magnesium});

  $NutrientCopyWith<$Res> get protein;
  $NutrientCopyWith<$Res> get fat;
  $NutrientCopyWith<$Res>? get unsaturatedFat;
  $NutrientCopyWith<$Res>? get saturatedFat;
  $NutrientCopyWith<$Res>? get transFat;
  $NutrientCopyWith<$Res> get carbohydrates;
  $NutrientCopyWith<$Res>? get sugar;
  $NutrientCopyWith<$Res>? get fiber;
  $NutrientCopyWith<$Res>? get sodium;
  $NutrientCopyWith<$Res>? get cholestrol;
  $NutrientCopyWith<$Res>? get potassium;
  $NutrientCopyWith<$Res>? get calcium;
  $NutrientCopyWith<$Res>? get magnesium;
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? brand = null,
    Object? description = null,
    Object? category = null,
    Object? value = null,
    Object? unit = null,
    Object? kcal = null,
    Object? protein = null,
    Object? fat = null,
    Object? unsaturatedFat = freezed,
    Object? saturatedFat = freezed,
    Object? transFat = freezed,
    Object? carbohydrates = null,
    Object? sugar = freezed,
    Object? fiber = freezed,
    Object? sodium = freezed,
    Object? cholestrol = freezed,
    Object? potassium = freezed,
    Object? calcium = freezed,
    Object? magnesium = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      kcal: null == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      unsaturatedFat: freezed == unsaturatedFat
          ? _value.unsaturatedFat
          : unsaturatedFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      saturatedFat: freezed == saturatedFat
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      transFat: freezed == transFat
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      fiber: freezed == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      sodium: freezed == sodium
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      cholestrol: freezed == cholestrol
          ? _value.cholestrol
          : cholestrol // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      potassium: freezed == potassium
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      calcium: freezed == calcium
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      magnesium: freezed == magnesium
          ? _value.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res> get protein {
    return $NutrientCopyWith<$Res>(_value.protein, (value) {
      return _then(_value.copyWith(protein: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res> get fat {
    return $NutrientCopyWith<$Res>(_value.fat, (value) {
      return _then(_value.copyWith(fat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get unsaturatedFat {
    if (_value.unsaturatedFat == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.unsaturatedFat!, (value) {
      return _then(_value.copyWith(unsaturatedFat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get saturatedFat {
    if (_value.saturatedFat == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.saturatedFat!, (value) {
      return _then(_value.copyWith(saturatedFat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get transFat {
    if (_value.transFat == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.transFat!, (value) {
      return _then(_value.copyWith(transFat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res> get carbohydrates {
    return $NutrientCopyWith<$Res>(_value.carbohydrates, (value) {
      return _then(_value.copyWith(carbohydrates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get sugar {
    if (_value.sugar == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.sugar!, (value) {
      return _then(_value.copyWith(sugar: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get fiber {
    if (_value.fiber == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.fiber!, (value) {
      return _then(_value.copyWith(fiber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get sodium {
    if (_value.sodium == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.sodium!, (value) {
      return _then(_value.copyWith(sodium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get cholestrol {
    if (_value.cholestrol == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.cholestrol!, (value) {
      return _then(_value.copyWith(cholestrol: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get potassium {
    if (_value.potassium == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.potassium!, (value) {
      return _then(_value.copyWith(potassium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get calcium {
    if (_value.calcium == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.calcium!, (value) {
      return _then(_value.copyWith(calcium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientCopyWith<$Res>? get magnesium {
    if (_value.magnesium == null) {
      return null;
    }

    return $NutrientCopyWith<$Res>(_value.magnesium!, (value) {
      return _then(_value.copyWith(magnesium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodImplCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$FoodImplCopyWith(
          _$FoodImpl value, $Res Function(_$FoodImpl) then) =
      __$$FoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String brand,
      String description,
      String category,
      int value,
      Unit unit,
      String kcal,
      Nutrient protein,
      Nutrient fat,
      Nutrient? unsaturatedFat,
      Nutrient? saturatedFat,
      Nutrient? transFat,
      Nutrient carbohydrates,
      Nutrient? sugar,
      Nutrient? fiber,
      Nutrient? sodium,
      Nutrient? cholestrol,
      Nutrient? potassium,
      Nutrient? calcium,
      Nutrient? magnesium});

  @override
  $NutrientCopyWith<$Res> get protein;
  @override
  $NutrientCopyWith<$Res> get fat;
  @override
  $NutrientCopyWith<$Res>? get unsaturatedFat;
  @override
  $NutrientCopyWith<$Res>? get saturatedFat;
  @override
  $NutrientCopyWith<$Res>? get transFat;
  @override
  $NutrientCopyWith<$Res> get carbohydrates;
  @override
  $NutrientCopyWith<$Res>? get sugar;
  @override
  $NutrientCopyWith<$Res>? get fiber;
  @override
  $NutrientCopyWith<$Res>? get sodium;
  @override
  $NutrientCopyWith<$Res>? get cholestrol;
  @override
  $NutrientCopyWith<$Res>? get potassium;
  @override
  $NutrientCopyWith<$Res>? get calcium;
  @override
  $NutrientCopyWith<$Res>? get magnesium;
}

/// @nodoc
class __$$FoodImplCopyWithImpl<$Res>
    extends _$FoodCopyWithImpl<$Res, _$FoodImpl>
    implements _$$FoodImplCopyWith<$Res> {
  __$$FoodImplCopyWithImpl(_$FoodImpl _value, $Res Function(_$FoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? brand = null,
    Object? description = null,
    Object? category = null,
    Object? value = null,
    Object? unit = null,
    Object? kcal = null,
    Object? protein = null,
    Object? fat = null,
    Object? unsaturatedFat = freezed,
    Object? saturatedFat = freezed,
    Object? transFat = freezed,
    Object? carbohydrates = null,
    Object? sugar = freezed,
    Object? fiber = freezed,
    Object? sodium = freezed,
    Object? cholestrol = freezed,
    Object? potassium = freezed,
    Object? calcium = freezed,
    Object? magnesium = freezed,
  }) {
    return _then(_$FoodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      kcal: null == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      unsaturatedFat: freezed == unsaturatedFat
          ? _value.unsaturatedFat
          : unsaturatedFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      saturatedFat: freezed == saturatedFat
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      transFat: freezed == transFat
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as Nutrient,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      fiber: freezed == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      sodium: freezed == sodium
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      cholestrol: freezed == cholestrol
          ? _value.cholestrol
          : cholestrol // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      potassium: freezed == potassium
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      calcium: freezed == calcium
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
      magnesium: freezed == magnesium
          ? _value.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as Nutrient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodImpl implements _Food {
  _$FoodImpl(
      {this.id,
      required this.name,
      required this.brand,
      required this.description,
      required this.category,
      required this.value,
      required this.unit,
      required this.kcal,
      required this.protein,
      required this.fat,
      this.unsaturatedFat,
      this.saturatedFat,
      this.transFat,
      required this.carbohydrates,
      this.sugar,
      this.fiber,
      this.sodium,
      this.cholestrol,
      this.potassium,
      this.calcium,
      this.magnesium});

  factory _$FoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String description;
  @override
  final String category;
  @override
  final int value;
  @override
  final Unit unit;
  @override
  final String kcal;
  @override
  final Nutrient protein;
  @override
  final Nutrient fat;
  @override
  final Nutrient? unsaturatedFat;
  @override
  final Nutrient? saturatedFat;
  @override
  final Nutrient? transFat;
  @override
  final Nutrient carbohydrates;
  @override
  final Nutrient? sugar;
  @override
  final Nutrient? fiber;
  @override
  final Nutrient? sodium;
  @override
  final Nutrient? cholestrol;
  @override
  final Nutrient? potassium;
  @override
  final Nutrient? calcium;
  @override
  final Nutrient? magnesium;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, brand: $brand, description: $description, category: $category, value: $value, unit: $unit, kcal: $kcal, protein: $protein, fat: $fat, unsaturatedFat: $unsaturatedFat, saturatedFat: $saturatedFat, transFat: $transFat, carbohydrates: $carbohydrates, sugar: $sugar, fiber: $fiber, sodium: $sodium, cholestrol: $cholestrol, potassium: $potassium, calcium: $calcium, magnesium: $magnesium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.kcal, kcal) || other.kcal == kcal) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.unsaturatedFat, unsaturatedFat) ||
                other.unsaturatedFat == unsaturatedFat) &&
            (identical(other.saturatedFat, saturatedFat) ||
                other.saturatedFat == saturatedFat) &&
            (identical(other.transFat, transFat) ||
                other.transFat == transFat) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            (identical(other.fiber, fiber) || other.fiber == fiber) &&
            (identical(other.sodium, sodium) || other.sodium == sodium) &&
            (identical(other.cholestrol, cholestrol) ||
                other.cholestrol == cholestrol) &&
            (identical(other.potassium, potassium) ||
                other.potassium == potassium) &&
            (identical(other.calcium, calcium) || other.calcium == calcium) &&
            (identical(other.magnesium, magnesium) ||
                other.magnesium == magnesium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        brand,
        description,
        category,
        value,
        unit,
        kcal,
        protein,
        fat,
        unsaturatedFat,
        saturatedFat,
        transFat,
        carbohydrates,
        sugar,
        fiber,
        sodium,
        cholestrol,
        potassium,
        calcium,
        magnesium
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      __$$FoodImplCopyWithImpl<_$FoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodImplToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  factory _Food(
      {final int? id,
      required final String name,
      required final String brand,
      required final String description,
      required final String category,
      required final int value,
      required final Unit unit,
      required final String kcal,
      required final Nutrient protein,
      required final Nutrient fat,
      final Nutrient? unsaturatedFat,
      final Nutrient? saturatedFat,
      final Nutrient? transFat,
      required final Nutrient carbohydrates,
      final Nutrient? sugar,
      final Nutrient? fiber,
      final Nutrient? sodium,
      final Nutrient? cholestrol,
      final Nutrient? potassium,
      final Nutrient? calcium,
      final Nutrient? magnesium}) = _$FoodImpl;

  factory _Food.fromJson(Map<String, dynamic> json) = _$FoodImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get description;
  @override
  String get category;
  @override
  int get value;
  @override
  Unit get unit;
  @override
  String get kcal;
  @override
  Nutrient get protein;
  @override
  Nutrient get fat;
  @override
  Nutrient? get unsaturatedFat;
  @override
  Nutrient? get saturatedFat;
  @override
  Nutrient? get transFat;
  @override
  Nutrient get carbohydrates;
  @override
  Nutrient? get sugar;
  @override
  Nutrient? get fiber;
  @override
  Nutrient? get sodium;
  @override
  Nutrient? get cholestrol;
  @override
  Nutrient? get potassium;
  @override
  Nutrient? get calcium;
  @override
  Nutrient? get magnesium;
  @override
  @JsonKey(ignore: true)
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
