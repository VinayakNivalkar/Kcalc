import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/router/routes.dart';

class Details extends ConsumerWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'We need your Information like age, weight, height to provide recommendations and personalized experience',
                  style: ThemeData.light().typography.dense.titleMedium?.merge(const TextStyle(color: Colors.black)),
                  textAlign: TextAlign.center,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Your data is stored locally',
                  style: ThemeData.light().typography.dense.labelSmall?.merge(TextStyle(color: Colors.blueGrey.shade600)),
                  textAlign: TextAlign.center,
                )
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: FilledButton(
                      onPressed: () {
                        DetailsStep1Route().push(context);
                      },
                      child: const Text('Proceed', style: TextStyle(fontWeight: FontWeight.bold))
                  ),
                )
            ),
          ],
      ),
    );
  }
}
