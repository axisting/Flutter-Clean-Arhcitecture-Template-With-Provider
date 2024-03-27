import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/core/extensions/l10n_extension.dart';
import '/features/skeleton/provider/selected_page_provider.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPageIndex =
        Provider.of<SelectedPageProvider>(context).selectedPage;
    /*  
    String selectedPageName = Provider.of<SelectedPageProvidePageName(context: context);

    return Center(child: Text(selectedPageName));
    */
    // ! Aşağıdaki her bir sayfa ayrı özelliklerin içinde tanımlanmalıdır.
    // ! home_page.dart explore_page.dart profile_page.dart
    // ! Burada örnek bir taslak olması açısından şekildeki gibi oluşturulmuştur
    // ! Gerçek sayfalarını oluşturduktan sonra Template Classları silmeyi unutma
    switch (selectedPageIndex) {
      case 0:
        return const HomePageTemplate();
      case 1:
        return const ExplorePageTemplate();
      case 2:
        return const ProfilePageTemplate();
      default:
        return const HomePageTemplate();
    }
  }
}

class ProfilePageTemplate extends StatelessWidget {
  const ProfilePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.profile));
  }
}

class ExplorePageTemplate extends StatelessWidget {
  const ExplorePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.explore));
  }
}

class HomePageTemplate extends StatelessWidget {
  const HomePageTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.translate.home));
  }
}
