import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/collections/goal.dart';
import 'package:kcalc/collections/user.dart';
import 'package:kcalc/providers/init.dart';
import 'package:kcalc/providers/initstate.dart';

class DetailsStep2 extends ConsumerStatefulWidget {
  const DetailsStep2({super.key});

  @override
  ConsumerState createState() => _DetailsStep2State();
}

class _DetailsStep2State extends ConsumerState<DetailsStep2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final InitStateData initstate = ref.watch(initStateProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                    labelText: 'Height (in cm)'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Height is required';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Height should be numeric';
                  }
                  if (double.tryParse(value)! > 251) {
                    return 'Height too much';
                  }
                  if (double.tryParse(value)! < 54.6) {
                    return 'Height too less';
                  }
                  return null;
                },
                onChanged: (value) {
                  ref.read(initStateProvider.notifier).setHeight(double.tryParse(value));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                    labelText: 'Weight (in kg)'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Weight is required';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Weight should be numeric';
                  }
                  if (double.tryParse(value)! > 635) {
                    return 'Weight too much';
                  }
                  if (double.tryParse(value)! < 2.1) {
                    return 'Weight too less';
                  }
                  return null;
                },
                onChanged: (value) {
                  ref.read(initStateProvider.notifier).setWeight(double.tryParse(value));
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                      labelText: 'Set Goal'
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: GoalOpts.gainWeight,
                      child: Text('Gain Weight'),
                    ),
                    DropdownMenuItem(
                      value: GoalOpts.maintainWeight,
                      child: Text('Maintain Weight'),
                    ),
                    DropdownMenuItem(
                      value: GoalOpts.loseWeight,
                      child: Text('Lose Weight'),
                    ),
                  ],
                  onChanged: (value) {
                    ref.read(initStateProvider.notifier).setGoal(value);
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Goal is required';
                    }
                    return null;
                  },
                )
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: FilledButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ref.read(initProvider.notifier).initRegister(initstate);
                      }
                    },
                    child: const Text('Start Tracking', style: TextStyle(fontWeight: FontWeight.bold))
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
