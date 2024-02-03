// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recordstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordStateData {
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordStateDataCopyWith<RecordStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateDataCopyWith<$Res> {
  factory $RecordStateDataCopyWith(
          RecordStateData value, $Res Function(RecordStateData) then) =
      _$RecordStateDataCopyWithImpl<$Res, RecordStateData>;
  @useResult
  $Res call({List<Record> records});
}

/// @nodoc
class _$RecordStateDataCopyWithImpl<$Res, $Val extends RecordStateData>
    implements $RecordStateDataCopyWith<$Res> {
  _$RecordStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordStateDataImplCopyWith<$Res>
    implements $RecordStateDataCopyWith<$Res> {
  factory _$$RecordStateDataImplCopyWith(_$RecordStateDataImpl value,
          $Res Function(_$RecordStateDataImpl) then) =
      __$$RecordStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records});
}

/// @nodoc
class __$$RecordStateDataImplCopyWithImpl<$Res>
    extends _$RecordStateDataCopyWithImpl<$Res, _$RecordStateDataImpl>
    implements _$$RecordStateDataImplCopyWith<$Res> {
  __$$RecordStateDataImplCopyWithImpl(
      _$RecordStateDataImpl _value, $Res Function(_$RecordStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_$RecordStateDataImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$RecordStateDataImpl implements _RecordStateData {
  _$RecordStateDataImpl({final List<Record> records = const []})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'RecordStateData(records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateDataImpl &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateDataImplCopyWith<_$RecordStateDataImpl> get copyWith =>
      __$$RecordStateDataImplCopyWithImpl<_$RecordStateDataImpl>(
          this, _$identity);
}

abstract class _RecordStateData implements RecordStateData {
  factory _RecordStateData({final List<Record> records}) =
      _$RecordStateDataImpl;

  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$RecordStateDataImplCopyWith<_$RecordStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
