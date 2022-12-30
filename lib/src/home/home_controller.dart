import 'package:flutter/foundation.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';

class HomeController with ChangeNotifier {
  BottomNavigationItem selectedItem;

  HomeController({required this.selectedItem});

  void onSelectBottomItem(BottomNavigationItem index) {
    selectedItem = index;

    notifyListeners();
  }
}
