import 'package:flutter/material.dart';
import '/features/skeleton/widgets/app_bar.dart';
import '/features/skeleton/widgets/bottom_navigation_bar.dart';
import '/features/skeleton/widgets/page_navigation.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SkeletonAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: NavigationWidget(),
    );
  }
}
