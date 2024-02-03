// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitStateData {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  GoalOpts? get goal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitStateDataCopyWith<InitStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateDataCopyWith<$Res> {
  factory $InitStateDataCopyWith(
          InitStateData value, $Res Function(InitStateData) then) =
      _$InitStateDataCopyWithImpl<$Res, InitStateData>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      Gender? gender,
      DateTime? dateOfBirth,
      double? height,
      double? weight,
      GoalOpts? goal});
}

/// @nodoc
class _$InitStateDataCopyWithImpl<$Res, $Val extends InitStateData>
    implements $InitStateDataCopyWith<$Res> {
  _$InitStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as GoalOpts?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitStateDataImplCopyWith<$Res>
    implements $InitStateDataCopyWith<$Res> {
  factory _$$InitStateDataImplCopyWith(
          _$InitStateDataImpl value, $Res Function(_$InitStateDataImpl) then) =
      __$$InitStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      Gender? gender,
      DateTime? dateOfBirth,
      double? height,
      double? weight,
      GoalOpts? goal});
}

/// @nodoc
class __$$InitStateDataImplCopyWithImpl<$Res>
    extends _$InitStateDataCopyWithImpl<$Res, _$InitStateDataImpl>
    implements _$$InitStateDataImplCopyWith<$Res> {
  __$$InitStateDataImplCopyWithImpl(
      _$InitStateDataImpl _value, $Res Function(_$InitStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? goal = freezed,
  }) {
    return _then(_$InitStateDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as GoalOpts?,
    ));
  }
}

/// @nodoc

class _$InitStateDataImpl implements _InitStateData {
  _$InitStateDataImpl(
      {this.name,
      this.email,
      this.gender,
      this.dateOfBirth,
      this.height,
      this.weight,
      this.goal});

  @override
  final String? name;
  @override
  final String? email;
  @override
  final Gender? gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final double? height;
  @override
  final double? weight;
  @override
  final GoalOpts? goal;

  @override
  String toString() {
    return 'InitStateData(name: $name, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, goal: $goal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStateDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, gender, dateOfBirth, height, weight, goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStateDataImplCopyWith<_$InitStateDataImpl> get copyWith =>
      __$$InitStateDataImplCopyWithImpl<_$InitStateDataImpl>(this, _$identity);
}

abstract class _InitStateData implements InitStateData {
  factory _InitStateData(
      {final String? name,
      final String? email,
      final Gender? gender,
      final DateTime? dateOfBirth,
      final double? height,
      final double? weight,
      final GoalOpts? goal}) = _$InitStateDataImpl;

  @override
  String? get name;
  @override
  String? get email;
  @override
  Gender? get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  double? get height;
  @override
  double? get weight;
  @override
  GoalOpts? get goal;
  @override
  @JsonKey(ignore: true)
  _$$InitStateDataImplCopyWith<_$InitStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
