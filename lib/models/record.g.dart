// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      id: json['id'] as int?,
      recordedAt: DateTime.parse(json['recordedAt'] as String),
      food: Food.fromJson(json['food'] as Map<String, dynamic>),
      serving: Nutrient.fromJson(json['serving'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordedAt': instance.recordedAt.toIso8601String(),
      'food': instance.food,
      'serving': instance.serving,
    };
