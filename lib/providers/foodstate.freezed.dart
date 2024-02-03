// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foodstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodStateData {
  List<Food> get foods => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodStateDataCopyWith<FoodStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateDataCopyWith<$Res> {
  factory $FoodStateDataCopyWith(
          FoodStateData value, $Res Function(FoodStateData) then) =
      _$FoodStateDataCopyWithImpl<$Res, FoodStateData>;
  @useResult
  $Res call({List<Food> foods});
}

/// @nodoc
class _$FoodStateDataCopyWithImpl<$Res, $Val extends FoodStateData>
    implements $FoodStateDataCopyWith<$Res> {
  _$FoodStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodStateDataImplCopyWith<$Res>
    implements $FoodStateDataCopyWith<$Res> {
  factory _$$FoodStateDataImplCopyWith(
          _$FoodStateDataImpl value, $Res Function(_$FoodStateDataImpl) then) =
      __$$FoodStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Food> foods});
}

/// @nodoc
class __$$FoodStateDataImplCopyWithImpl<$Res>
    extends _$FoodStateDataCopyWithImpl<$Res, _$FoodStateDataImpl>
    implements _$$FoodStateDataImplCopyWith<$Res> {
  __$$FoodStateDataImplCopyWithImpl(
      _$FoodStateDataImpl _value, $Res Function(_$FoodStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
  }) {
    return _then(_$FoodStateDataImpl(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

class _$FoodStateDataImpl implements _FoodStateData {
  _$FoodStateDataImpl({final List<Food> foods = const []}) : _foods = foods;

  final List<Food> _foods;
  @override
  @JsonKey()
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'FoodStateData(foods: $foods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodStateDataImpl &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodStateDataImplCopyWith<_$FoodStateDataImpl> get copyWith =>
      __$$FoodStateDataImplCopyWithImpl<_$FoodStateDataImpl>(this, _$identity);
}

abstract class _FoodStateData implements FoodStateData {
  factory _FoodStateData({final List<Food> foods}) = _$FoodStateDataImpl;

  @override
  List<Food> get foods;
  @override
  @JsonKey(ignore: true)
  _$$FoodStateDataImplCopyWith<_$FoodStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
