import 'package:flutter/material.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class CodeController with ChangeNotifier {
  final CodeService service;

  CodeController({required this.service}) {
    loadCodes();
  }

  List<Code>? _codeList;

  List<Category> _codeCategoryList = [];

  late Category selectedCategory = _codeCategoryList.first;

  List<Category> get categoryList => _codeCategoryList;

  List<Code>? get codeList => _codeList;

  Future<void> loadCodes() async {
    _codeList = await getCodes();
    notifyListeners();
  }

  Future<void> loadCategories() async {
    _codeCategoryList = await service.getCategories();
  }

  Future<List<Code>> getCodes() async {
    return await service.getCodes(selectedCategory);
  }

  void selectCategory(Category category) {
    selectedCategory = category;
    _codeList = null;
    notifyListeners();

    loadCodes();
  }
}
