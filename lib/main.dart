import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: BaseApp(),
    ),
  );
}

class BaseApp extends ConsumerWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
