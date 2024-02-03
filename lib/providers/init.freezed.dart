// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitData {
  bool get isInitDone => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Goal? get goal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitDataCopyWith<InitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitDataCopyWith<$Res> {
  factory $InitDataCopyWith(InitData value, $Res Function(InitData) then) =
      _$InitDataCopyWithImpl<$Res, InitData>;
  @useResult
  $Res call({bool isInitDone, User? user, Goal? goal});
}

/// @nodoc
class _$InitDataCopyWithImpl<$Res, $Val extends InitData>
    implements $InitDataCopyWith<$Res> {
  _$InitDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitDone = null,
    Object? user = freezed,
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      isInitDone: null == isInitDone
          ? _value.isInitDone
          : isInitDone // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Goal?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitDataImplCopyWith<$Res>
    implements $InitDataCopyWith<$Res> {
  factory _$$InitDataImplCopyWith(
          _$InitDataImpl value, $Res Function(_$InitDataImpl) then) =
      __$$InitDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInitDone, User? user, Goal? goal});
}

/// @nodoc
class __$$InitDataImplCopyWithImpl<$Res>
    extends _$InitDataCopyWithImpl<$Res, _$InitDataImpl>
    implements _$$InitDataImplCopyWith<$Res> {
  __$$InitDataImplCopyWithImpl(
      _$InitDataImpl _value, $Res Function(_$InitDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitDone = null,
    Object? user = freezed,
    Object? goal = freezed,
  }) {
    return _then(_$InitDataImpl(
      isInitDone: null == isInitDone
          ? _value.isInitDone
          : isInitDone // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Goal?,
    ));
  }
}

/// @nodoc

class _$InitDataImpl implements _InitData {
  _$InitDataImpl({this.isInitDone = false, this.user, this.goal});

  @override
  @JsonKey()
  final bool isInitDone;
  @override
  final User? user;
  @override
  final Goal? goal;

  @override
  String toString() {
    return 'InitData(isInitDone: $isInitDone, user: $user, goal: $goal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitDataImpl &&
            (identical(other.isInitDone, isInitDone) ||
                other.isInitDone == isInitDone) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitDone, user, goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitDataImplCopyWith<_$InitDataImpl> get copyWith =>
      __$$InitDataImplCopyWithImpl<_$InitDataImpl>(this, _$identity);
}

abstract class _InitData implements InitData {
  factory _InitData(
      {final bool isInitDone,
      final User? user,
      final Goal? goal}) = _$InitDataImpl;

  @override
  bool get isInitDone;
  @override
  User? get user;
  @override
  Goal? get goal;
  @override
  @JsonKey(ignore: true)
  _$$InitDataImplCopyWith<_$InitDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
