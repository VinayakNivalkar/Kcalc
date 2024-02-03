import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kcalc/providers/nutrition.dart';
import 'package:kcalc/router/routes.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

final data = [
  _ChartData('Calories Required', 2447),
  _ChartData('Gain', 500),
  _ChartData('Calories Consumed', 553),
];

final proteinData = [
  _ChartData('Protein Required', 100),
  _ChartData('Protein Consumed', 100),
];

final carbohydratesData = [
  _ChartData('Protein Required', 400),
  _ChartData('Protein Consumed', 200),
];

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<NutritionStateData> nutri = ref.watch(nutritionStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kcalc'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings_rounded),
            onPressed: () => SettingsRoute().push(context),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              SfCircularChart(
                palette: [Colors.grey.shade200, Colors.lightGreen],
                series: <CircularSeries<_ChartData, String>>[
                  DoughnutSeries<_ChartData, String>(
                    dataSource: <_ChartData>[
                      _ChartData('Calories Required', nutri.requireValue.reqKcal!.roundToDouble() - nutri.requireValue.consumedKcal!.roundToDouble()),
                      _ChartData('Calories Consumed', nutri.requireValue.consumedKcal!.roundToDouble()),
                    ],
                    xValueMapper: (_ChartData data, _) => data.x,
                    yValueMapper: (_ChartData data, _) => data.y,
                    innerRadius: '60%',
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true,
                      showZeroValue: false,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text((nutri.requireValue.reqKcal!.round() - nutri.requireValue.consumedKcal!.round()).toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text('Kcal left')
                    ],
                  )
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                    Text(' Required'),
                    Spacer(),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          border: Border.all(color: Colors.black)
                      ),
                    ),
                    Text(' Consumed'),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: [
                  FilledButton(
                    onPressed: () {
                      FoodRoute().push(context);
                    },
                    child: Text('View Logged Food')
                  ),
                  Spacer(),
                  FilledButton.tonalIcon(
                    onPressed: () {
                      LogFoodRoute().push(context);
                    },
                    label: Text('Log Food'),
                    icon: Icon(Icons.add)
                  ),
                ],
              ),
            ),
          ),
          /*SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Card(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    shadowColor: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text('Protein'),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: SfCircularChart(
                            palette: [Colors.grey.shade200, Colors.green],
                            series: <CircularSeries<_ChartData, String>>[
                              DoughnutSeries<_ChartData, String>(
                                dataSource: <_ChartData>[
                                  _ChartData('Protein Required', (nutri.requireValue.reqProtein ?? 0).roundToDouble() - (nutri.requireValue.consumedProtein ?? 0).roundToDouble()),
                                  _ChartData('Protein Consumed', (nutri.requireValue.consumedProtein ?? 0).roundToDouble()),
                                ],
                                xValueMapper: (_ChartData data, _) => data.x,
                                yValueMapper: (_ChartData data, _) => data.y,
                                innerRadius: '60%',
                              ),
                            ],
                          ),
                        ),
                        Text(' ${(nutri.requireValue.consumedProtein ?? 0).round()} / ${(nutri.requireValue.reqProtein ?? 0).round()} gm '),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    shadowColor: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text('Carbs'),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: SfCircularChart(
                            palette: [Colors.grey.shade200, Colors.green],
                            series: <CircularSeries<_ChartData, String>>[
                              DoughnutSeries<_ChartData, String>(
                                dataSource: <_ChartData>[
                                  _ChartData('Protein Required', (nutri.requireValue.reqCarbohydrates ?? 0).roundToDouble() - (nutri.requireValue.consumedCarbohydrates ?? 0).roundToDouble()),
                                  _ChartData('Protein Consumed', (nutri.requireValue.consumedCarbohydrates ?? 0).roundToDouble()),
                                ],
                                xValueMapper: (_ChartData data, _) => data.x,
                                yValueMapper: (_ChartData data, _) => data.y,
                                innerRadius: '60%',
                              ),
                            ],
                          ),
                        ),
                        Text(' ${(nutri.requireValue.consumedCarbohydrates ?? 0).round()} / ${(nutri.requireValue.reqCarbohydrates ?? 0).round()} gm '),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    shadowColor: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text('Fat'),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: SfCircularChart(
                            palette: [Colors.grey.shade200, Colors.green],
                            series: <CircularSeries<_ChartData, String>>[
                              DoughnutSeries<_ChartData, String>(
                                dataSource: <_ChartData>[
                                  _ChartData('Protein Required', (nutri.requireValue.reqFat ?? 0).roundToDouble() - (nutri.requireValue.consumedFat ?? 0).roundToDouble()),
                                  _ChartData('Protein Consumed', (nutri.requireValue.consumedFat ?? 0).roundToDouble()),
                                ],
                                xValueMapper: (_ChartData data, _) => data.x,
                                yValueMapper: (_ChartData data, _) => data.y,
                                innerRadius: '60%',
                              ),
                            ],
                          ),
                        ),
                        Text(' ${(nutri.requireValue.consumedFat ?? 0).round()} / ${(nutri.requireValue.reqFat ?? 0).round()} gm '),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),*/
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20).add(EdgeInsets.only(bottom: 30)),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color(0xd0d0d0).withOpacity(1),
                offset: Offset(0, 3),
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ],
          ),
          child: nutri.hasValue ? Row(
            children: [
              IconButton(
                onPressed: () {
                  ref.read(nutritionStateProvider.notifier).updateByDate(nutri.value!.date!.subtract(Duration(days: 1)));
                },
                icon: Icon(Icons.chevron_left)
              ),
              Spacer(),
              Text(DateFormat.yMMMd().format(nutri.value!.date!)),
              Spacer(),
              IconButton(
                  onPressed: () {
                    ref.read(nutritionStateProvider.notifier).updateByDate(nutri.value!.date!.add(Duration(days: 1)));
                  },
                  icon: Icon(Icons.chevron_right)
              ),
            ],
          ) : Row(),
        ),
      ),
    );
  }
}
