import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/providers/nutrition.dart';
import 'package:kcalc/providers/recordstate.dart';

class ViewFood extends ConsumerWidget {
  const ViewFood({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var recordState = ref.watch(recordStateProvider);

    ref.read(recordStateProvider.notifier).getRecords(ref.read(nutritionStateProvider).requireValue.date ?? DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged Food'),
      ),
      body: ListView(
        children: recordState.records.map((e) {
          return ListTile(
            title: Text(e.food.value!.name),
            subtitle: Text('${e.value} ${e.food.value?.unit.name} | + ${(((e.food.value!.kcal / 100) * 100) / 100) * e.value} kcal'),
            trailing: IconButton(
              onPressed: () {
                ref.read(recordStateProvider.notifier).removeRecord(ref.read(nutritionStateProvider).requireValue.date ?? DateTime.now(), e.id);
              },
              icon: Icon(Icons.remove_circle, color: Colors.orange,)
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          );
        }).toList()
      ),
    );
  }
}
