import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainAppbarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const MainAppbarWidget({
    super.key,
    required this.appBar,
    required this.title,
    required this.scaffoldKey,
    this.center = false,
  });

  final AppBar appBar;
  final String title;
  final bool center;
  final dynamic scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.white,
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey.shade200,
          width: 5,
        ),
      ),
      centerTitle: center,
      actions: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
          icon: const Icon(Icons.person_outlined),
        ),
      ],
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
