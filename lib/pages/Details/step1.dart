import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kcalc/collections/user.dart';
import 'package:kcalc/providers/initstate.dart';
import 'package:kcalc/router/routes.dart';

class DetailsStep1 extends ConsumerStatefulWidget {
  const DetailsStep1({super.key});

  @override
  ConsumerState createState() => _DetailsStep1State();
}

class _DetailsStep1State extends ConsumerState<DetailsStep1> {
  final _formKey = GlobalKey<FormState>();

  final _dobcontroller = TextEditingController();

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
                  ref.read(initStateProvider.notifier).setName(value);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                      labelText: 'Gender'
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: Gender.male,
                      child: Text('Male'),
                    ),
                    DropdownMenuItem(
                      value: Gender.female,
                      child: Text('Female'),
                    ),
                  ],
                  onChanged: (value) {
                    ref.read(initStateProvider.notifier).setGender(value);
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Gender is required';
                    }
                    return null;
                  },
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                controller: _dobcontroller,
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(50)),
                  labelText: 'Date of Birth',
                ),
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now().copyWith(year: DateTime.now().year - 100),
                      lastDate: DateTime.now(),
                  );
                  if (picked != null && picked != initstate.dateOfBirth) {
                    ref.read(initStateProvider.notifier).setDateOfBirth(picked);
                    _dobcontroller.text = DateFormat.yMMMd().format(picked);
                  }
                },
                validator: (value) {
                  if (initstate.dateOfBirth == null) {
                    return 'DOB is required';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: FilledButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          DetailsStep2Route().push(context);
                        }
                      },
                      child: const Text('Next', style: TextStyle(fontWeight: FontWeight.bold))
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
