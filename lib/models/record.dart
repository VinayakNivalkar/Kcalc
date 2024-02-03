import 'package:freezed_annotation/freezed_annotation.dart';
import 'food.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  factory Record ({
    int? id,
    required DateTime recordedAt,
    required Food food,
    required Nutrient serving,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}