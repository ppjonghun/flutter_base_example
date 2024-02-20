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
              Image.asset('assets/images/splash.png'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.go('/');
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
