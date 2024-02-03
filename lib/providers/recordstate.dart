import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:kcalc/collections/record.dart';
import 'package:kcalc/providers/nutrition.dart';
import 'package:kcalc/utils/isar_proxy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recordstate.g.dart';
part 'recordstate.freezed.dart';

@freezed
class RecordStateData with _$RecordStateData {
  factory RecordStateData ({
    @Default([]) List<Record> records,
  }) = _RecordStateData;
}

@riverpod
class RecordState extends _$RecordState {
  @override
  RecordStateData build() {
    return RecordStateData(
      records: [],
    );
  }

  getRecords(DateTime date) async {
    Isar? isar = proxy.getIsar();

    DateTime dateStart = DateTime(date.year, date.month, date.day, 0);
    DateTime dateEnd = DateTime(date.year, date.month, date.day, 0).add(const Duration(days: 1));

    var records = await isar!.records.filter().recordedAtBetween(dateStart, dateEnd).sortByRecordedAtDesc().findAll();

    state = RecordStateData(
      records: records,
    );
  }

  removeRecord(DateTime date, int id) async {
    Isar? isar = proxy.getIsar();

    await isar!.writeTxn(() async {
      await isar!.records.delete(id);
    });

    getRecords(date);

    ref.read(nutritionStateProvider.notifier).updateByDate(date);
  }
}