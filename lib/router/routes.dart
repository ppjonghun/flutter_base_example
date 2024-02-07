import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:example/pages/delivery_box_select_page.dart';

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
    return const SplashPage();
  }
}

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedGoRoute<DeliveryBoxSelectRoute>(path: '/box_select')
class DeliveryBoxSelectRoute extends GoRouteData {
  const DeliveryBoxSelectRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DeliveryBoxSelectPage();
  }
}
