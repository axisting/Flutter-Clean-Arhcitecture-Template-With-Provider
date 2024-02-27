import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/features/skeleton/provider/selected_page_provider.dart';

class SkeletonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SkeletonAppBar({
    super.key,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text("A x I Template"));
  }
}
