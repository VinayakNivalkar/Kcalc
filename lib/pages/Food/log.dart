import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:kcalc/collections/food.dart';
import 'package:kcalc/components/logDialog.dart';
import 'package:kcalc/providers/foodstate.dart';
import 'package:kcalc/router/routes.dart';
import 'package:kcalc/utils/isar_proxy.dart';

class LogFood extends ConsumerStatefulWidget {
  const LogFood({super.key});

  @override
  ConsumerState createState() => _LogFoodState();
}

class _LogFoodState extends ConsumerState<LogFood> {
  @override
  Widget build(BuildContext context) {
    var foodState = ref.watch(foodStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Log Food'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SearchBar(
              elevation: const MaterialStatePropertyAll(1),
              leading: const Icon(Icons.search),
              padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
              hintText: 'Search',
              onChanged: (String value) {
                ref.read(foodStateProvider.notifier).search(value);
              },
            ),
          ),
          foodState.foods.isEmpty ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: FilledButton.tonalIcon(
              onPressed: () {
                CreateFoodRoute().push(context);
              },
              label: Text('Create Food'),
              icon: Icon(Icons.add),
            )
          ) : Column(
            children: foodState.foods.map((e) {
              return ListTile(
                title: Text(e.name),
                subtitle: Text( '+ ${e.kcal}Kcal'),
                trailing: FilledButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => LogDialog(e),
                    );
                  },
                  child: const Text('+ log')
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
