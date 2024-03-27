import 'package:flutter/material.dart';

class SelectedPageProvider extends ChangeNotifier {
  int selectedPage;

  SelectedPageProvider({
    this.selectedPage = 0,
  });

  void changePage(int newValue) {
    selectedPage = newValue;
    notifyListeners();
  }

  String selectedPageName({required context}) {
    switch (selectedPage) {
      case 0:
        return context.translate.home;
      case 1:
        return context.translate.explore;
      case 2:
        return context.translate.profile;
      default:
        return context.translate.home;
    }
  }
}
