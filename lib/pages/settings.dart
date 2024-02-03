import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/providers/init.dart';
import 'package:kcalc/providers/initstate.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     InitData? init = ref.watch(initProvider).value;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: ListTile(
              leading: const Icon(Icons.account_circle, size: 50,),
              title: Text(init!.user!.name, style: TextStyle(fontSize: 20)),
              subtitle: Text(' Goal: ${init.goal!.goal == GoalOpts.gainWeight ? 'Gain Weight' : init.goal!.goal == GoalOpts.loseWeight ? 'Lose Weight' : 'Maintain Weight'}'),
              contentPadding: EdgeInsets.all(20),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: ListTile(
              title: Text('Weight: ' + init!.user!.weight.toString() + ' Kg'),
              subtitle: Text('You are Gaining  weight'),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: ListTile(
              title: Text('Height: ' + init!.user!.height.toString() + ' cm'),
              subtitle: Text('Height grows till 21 years of age'),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: ListTile(
              title: Text('Gender: ' + init!.user!.gender.name),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: ListTile(
              title: Text('Date Of Birth: ' + DateFormat.yMMMd().format(init!.user!.dateOfBirth)),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: FilledButton(
              onPressed: () {
                ref.read(initProvider.notifier).resetRegister();
              },
              child: Text('Reset Data')
            ),
          ),
        ],
      )
    );
  }
}
