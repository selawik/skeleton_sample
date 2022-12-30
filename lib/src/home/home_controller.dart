import 'package:flutter/foundation.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';

class HomeController with ChangeNotifier {
  BottomNavigationItem itemIndex = BottomNavigationItem.codes;

  HomeController();

  void onSelectBottomItem(BottomNavigationItem index) {
    itemIndex = index;

    notifyListeners();
  }
}
