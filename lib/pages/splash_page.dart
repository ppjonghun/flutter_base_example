import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Splash Page'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.go('/box_select');
                },
                child: const Text('이동'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
