import 'package:flutter/material.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class CodeController with ChangeNotifier {
  Category _selectedCategory;

  List<Code>? _codeList;

  final CodeService _service;

  List<Category> get categoryList => Category.values;

  List<Code>? get codeList => _codeList;

  Category get selectedCategory => _selectedCategory;

  CodeController({
    required CodeService codeService,
    Category initialCategory = Category.all,
  })  : _service = codeService,
        _selectedCategory = initialCategory {
    _loadCodes();
  }

  Future<void> _loadCodes() async {
    _codeList = await getCodes();

    notifyListeners();
  }

  Future<List<Code>> getCodes() async {
    return await _service.getCodes(_selectedCategory);
  }

  void selectCategory(Category category) {
    if (_selectedCategory == category) {
      return;
    }

    _selectedCategory = category;
    _codeList = null;

    notifyListeners();

    _loadCodes();
  }
}
