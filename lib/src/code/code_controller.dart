import 'package:flutter/material.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class CodeController with ChangeNotifier {
  CodeController();

  List<Category> getCategories() {
    return [
      Category('Все коды', 1),
      Category('Избранное', 1),
      Category('Машина', 1),
      Category('Машина', 1),
      Category('Машина', 1),
      Category('Машина', 1),
    ];
  }

  List<Code> getCodes() {
    return [];
  }

  void selectCategory() {}
}
