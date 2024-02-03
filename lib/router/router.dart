import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcalc/providers/init.dart';
import 'package:kcalc/router/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  final isInitDone = ValueNotifier<bool>(false);
  
  ref
    ..onDispose(isInitDone.dispose)
    ..listen(initProvider, (previous, next) {
      if (next.hasValue) {
        isInitDone.value = next.requireValue.isInitDone;
      }
    });

  final router = GoRouter(
    navigatorKey: routerKey,
    refreshListenable: isInitDone,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) {
      if (isInitDone.value) {
        if (state.uri.path.startsWith(DetailsRoute().location)) {
          return HomeRoute().location;
        }
      } else {
        if (!state.uri.path.startsWith(DetailsRoute().location)) {
          return DetailsRoute().location;
        }
      }
    }
  );

  ref.onDispose(router.dispose);

  return router;
}
