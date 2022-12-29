import 'package:flutter/material.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class CodeController with ChangeNotifier {
  final CodeService service;

  final List<Category> categoryList = Category.values;

  Category selectedCategory;

  List<Code>? _codeList;

  List<Code>? get codeList => _codeList;

  CodeController({
    required this.service,
    this.selectedCategory = Category.all,
  }) {
    loadCodes();
  }

  Future<void> loadCodes() async {
    _codeList = await getCodes();

    notifyListeners();
  }

  Future<List<Code>> getCodes() async {
    return await service.getCodes(selectedCategory);
  }

  void selectCategory(Category category) {
    if (selectedCategory == category) {
      return;
    }

    selectedCategory = category;
    _codeList = null;

    notifyListeners();

    loadCodes();
  }
}
