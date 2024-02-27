import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider_template/features/skeleton/widgets/app_bar.dart';
import 'package:provider_template/features/skeleton/widgets/bottom_navigation_bar.dart';
import 'package:provider_template/features/skeleton/widgets/page_navigation.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SkeletonAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: NavigationWidget(),
    );
  }
}
