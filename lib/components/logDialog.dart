import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/collections/food.dart';
import 'package:kcalc/providers/foodstate.dart';
import 'package:kcalc/providers/init.dart';
import 'package:kcalc/providers/nutrition.dart';

class LogDialog extends ConsumerStatefulWidget {
  const LogDialog(this.food, {super.key});

  final Food food;

  @override
  ConsumerState createState() => _LogDialogState();
}

class _LogDialogState extends ConsumerState<LogDialog> {
  final _formKey = GlobalKey<FormState>();

  int? value;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter your serving'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
            labelText: 'Serving',
            suffixText: widget.food.unit.name,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'serving is required';
            }
            return null;
          },
          onChanged: (val) {
            setState(() {
              value = int.tryParse(val);
            });
          },
        ),
      ),
      actions: [
        FilledButton(
          child: Text('log'),
          onPressed: () async {
            await ref.read(foodStateProvider.notifier).log(widget.food, value!, ref.watch(nutritionStateProvider).requireValue.date ?? DateTime.now());
            Navigator.of(context).pop();
          }
        ),
      ],
    );
  }
}
