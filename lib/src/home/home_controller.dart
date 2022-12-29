import 'package:flutter/foundation.dart';

enum BottomNavItem { settings, code, profile }

class HomeController with ChangeNotifier {
  int itemIndex = 1;

  HomeController();

  void onSelectBottomItem(int index) {
    itemIndex = index;

    notifyListeners();
  }
}
