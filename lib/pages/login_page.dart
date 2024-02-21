import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../utils/base_util.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends ConsumerState<LoginPage> {
  // Create storage
  static const storage = FlutterSecureStorage();

  final userIdController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      autoLogin();
    });
  }

  Future<void> autoLogin() async {
    // Read value
    final dynamic token = await storage.read(key: 'token');

    if (token != null) {
      if (!context.mounted) return;
      context.go('/');
    }
  }

  Future<void> login() async {
    const uuid = Uuid();
    // Delete value
    await storage.delete(key: 'token');

    final token = uuid.v1();

    // Write value, Key and Value is example
    await storage.write(key: 'token', value: token);

    if (!context.mounted) return;
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userIdController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ID',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: userPasswordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (userIdController.text == '') {
                      showToast('ID !');
                    } else if (userPasswordController.text == '') {
                      showToast('PASSWORD !');
                    } else {
                      await login();
                    }
                  },
                  child: const Text('login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
