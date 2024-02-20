import 'package:flutter/material.dart';
import 'package:flutter_base_example/widgets/drawer_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const BaseDrawerWidget(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Home Body'),
      ),
    );
  }
}
