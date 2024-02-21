import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseDrawerWidget extends ConsumerWidget {
  const BaseDrawerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text('Drawer Header')),
          ListTile(
            title: const Text('Go Counter Page'),
            trailing: IconButton(
              onPressed: () {
                context.push('/counter');
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          ListTile(
            title: const Text('Logout'),
            trailing: IconButton(
              onPressed: () {
                context.push('/logout');
              },
              icon: const Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }
}
