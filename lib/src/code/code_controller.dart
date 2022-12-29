import 'package:flutter/material.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class CodeController with ChangeNotifier {
  final List<Category> _codeCategoryList = [
    Category(name: 'Все коды', categoryId: 1),
    Category(name: 'Избранное', categoryId: 2),
    Category(name: 'Машина', categoryId: 3),
    Category(name: 'Дом', categoryId: 4),
    Category(name: 'Работа', categoryId: 5),
    Category(name: 'Дети', categoryId: 5),
  ];

  CodeController({required this.service});

  final CodeService service;

  late Category selectedCategory = _codeCategoryList.first;

  List<Category> get categoryList => _codeCategoryList;

  Future<List<Code>> getCodes() async {
    return await service.getCodes(selectedCategory);
  }

  void selectCategory(Category category) {
    selectedCategory = category;
  }
}
