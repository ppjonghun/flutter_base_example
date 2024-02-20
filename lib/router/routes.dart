import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base_example/pages/counter_page.dart';
import 'package:flutter_base_example/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import '../pages/splash_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    return null;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedGoRoute<CounterRoute>(path: '/counter')
class CounterRoute extends GoRouteData {
  const CounterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CounterPage();
  }
}
