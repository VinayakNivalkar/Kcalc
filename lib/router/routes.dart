import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcalc/pages/Details/index.dart';
import 'package:kcalc/pages/Details/step1.dart';
import 'package:kcalc/pages/Details/step2.dart';
import 'package:kcalc/pages/Food/create.dart';
import 'package:kcalc/pages/Food/log.dart';
import 'package:kcalc/pages/Food/view.dart';
import 'package:kcalc/pages/home.dart';
import 'package:kcalc/pages/settings.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<SettingsRoute>(path: 'settings'),
    TypedGoRoute<FoodRoute>(
      path: 'food',
      routes: [
        TypedGoRoute<LogFoodRoute>(path: 'log'),
        TypedGoRoute<CreateFoodRoute>(path: 'create')
      ]
    )
  ]
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Home();
  }
}
class SettingsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Settings();
  }
}
class FoodRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ViewFood();
  }
}
class LogFoodRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LogFood();
  }
}
class CreateFoodRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateFood();
  }
}

@TypedGoRoute<DetailsRoute>(
  path: '/details',
  routes: [
    TypedGoRoute<DetailsStep1Route>(path: 'step1'),
    TypedGoRoute<DetailsStep2Route>(path: 'step2'),
  ]
)
class DetailsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Details();
  }
}
class DetailsStep1Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DetailsStep1();
  }
}
class DetailsStep2Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DetailsStep2();
  }
}

