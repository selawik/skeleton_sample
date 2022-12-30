import 'package:flutter/foundation.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';

class HomeController with ChangeNotifier {
  BottomNavigationItem selectedItem = BottomNavigationItem.codes;

  HomeController();

  void onSelectBottomItem(BottomNavigationItem index) {
    selectedItem = index;

    notifyListeners();
  }
}
