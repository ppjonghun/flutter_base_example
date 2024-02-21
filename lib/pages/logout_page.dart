import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogoutPage extends ConsumerStatefulWidget {
  const LogoutPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _LogoutPageState();
  }
}

class _LogoutPageState extends ConsumerState<LogoutPage> {
  // Create storage
  static const storage = FlutterSecureStorage();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      logout();
    });
  }

  Future<void> logout() async {
    // Delete value
    await storage.delete(key: 'token');

    if (!context.mounted) return;
    context.go('/splash');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
