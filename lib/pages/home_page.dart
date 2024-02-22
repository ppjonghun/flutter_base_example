import 'package:flutter/material.dart';
import 'package:flutter_base_example/widgets/appbar_widget.dart';
import 'package:flutter_base_example/widgets/drawer_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: const MenuDrawerWidget(),
      endDrawer: const UserInfoDrawerWidget(),
      appBar: MainAppbarWidget(
        appBar: AppBar(),
        title: 'Home',
        center: true,
        scaffoldKey: scaffoldKey,
      ),
      body: const Center(
        child: Text('Home Body'),
      ),
    );
  }
}
