import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/collections/food.dart';
import 'package:kcalc/providers/foodstate.dart';
import 'package:kcalc/router/routes.dart';


class CreateFood extends ConsumerStatefulWidget {
  const CreateFood({super.key});

  @override
  ConsumerState createState() => _CreateFoodState();
}

class _CreateFoodState extends ConsumerState<CreateFood> {
  final _formKey = GlobalKey<FormState>();

  String? name;
  Unit? unit;

  double? Kcal;

  double? protein;

  double? fat;

  double? carbohydrates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Food Record'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                    labelText: 'Name'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                      labelText: 'Unit'
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: Unit.g,
                      child: Text('gram'),
                    ),
                    DropdownMenuItem(
                      value: Unit.ml,
                      child: Text('millilitre'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      unit = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Unit is required';
                    }
                    return null;
                  },
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Text('Enter values as per 100g or 100ml')
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                  labelText: 'Kcal',
                  suffixText: 'Kcal',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kcal is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    Kcal = double.tryParse(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                  labelText: 'Protein',
                  suffixText: 'g',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Protein is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    protein = double.tryParse(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                  labelText: 'Fat',
                  suffixText: 'g',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Fat is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    fat = double.tryParse(value);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                  labelText: 'Carbohydrates',
                  suffixText: 'g',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Carbs is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    carbohydrates = double.tryParse(value);
                  });
                },
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: FilledButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await ref.read(foodStateProvider.notifier).create(
                            Food()
                                ..name = name!
                                ..unit = unit!
                                ..kcal = Kcal!
                                ..protein = protein!
                                ..fat = fat!
                                ..carbohydrates = carbohydrates!
                          );

                          GoRouter.of(context).pop();
                        }
                      },
                      child: const Text('Create', style: TextStyle(fontWeight: FontWeight.bold))
                  ),
                )
            ),
          ],
        ),
      )
    );
  }
}
