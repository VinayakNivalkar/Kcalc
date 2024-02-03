// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $detailsRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'food',
          factory: $FoodRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'log',
              factory: $LogFoodRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'create',
              factory: $CreateFoodRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FoodRouteExtension on FoodRoute {
  static FoodRoute _fromState(GoRouterState state) => FoodRoute();

  String get location => GoRouteData.$location(
        '/food',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LogFoodRouteExtension on LogFoodRoute {
  static LogFoodRoute _fromState(GoRouterState state) => LogFoodRoute();

  String get location => GoRouteData.$location(
        '/food/log',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreateFoodRouteExtension on CreateFoodRoute {
  static CreateFoodRoute _fromState(GoRouterState state) => CreateFoodRoute();

  String get location => GoRouteData.$location(
        '/food/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $detailsRoute => GoRouteData.$route(
      path: '/details',
      factory: $DetailsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'step1',
          factory: $DetailsStep1RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'step2',
          factory: $DetailsStep2RouteExtension._fromState,
        ),
      ],
    );

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute();

  String get location => GoRouteData.$location(
        '/details',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsStep1RouteExtension on DetailsStep1Route {
  static DetailsStep1Route _fromState(GoRouterState state) =>
      DetailsStep1Route();

  String get location => GoRouteData.$location(
        '/details/step1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsStep2RouteExtension on DetailsStep2Route {
  static DetailsStep2Route _fromState(GoRouterState state) =>
      DetailsStep2Route();

  String get location => GoRouteData.$location(
        '/details/step2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
