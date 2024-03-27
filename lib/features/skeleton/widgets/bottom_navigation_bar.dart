import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/core/extensions/l10n_extension.dart';
import '/features/skeleton/provider/selected_page_provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedPageProvider>(context).selectedPage;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedPage,
      onTap: (value) {
        Provider.of<SelectedPageProvider>(context, listen: false)
            .changePage(value);
      },
      items: [
        bottomNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedPageName: context.translate.home),
        bottomNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedPageName: context.translate.explore),
        bottomNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedPageName: context.translate.profile),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(
      {required icon, required selectedPageName}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: selectedPageName,
    );
  }
}
