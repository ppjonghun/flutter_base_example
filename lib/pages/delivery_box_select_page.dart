import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state/box_counter.dart';

class DeliveryBoxSelectPage extends ConsumerWidget {
  const DeliveryBoxSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('택배 신청'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('최소형'),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(boxCounterProvider.notifier).increment(),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text('${ref.watch(boxCounterProvider)}'),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(boxCounterProvider.notifier).decrement(),
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
