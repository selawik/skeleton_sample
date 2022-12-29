import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class MockCodeService implements CodeService {
  List<Code> mockCodes = [
    Code(codeId: 1, categoryId: 2, name: 'Мой ребенок'),
    Code(codeId: 2, categoryId: 2, name: 'Мой кошелек'),
    Code(codeId: 3, categoryId: 2, name: 'Мой автомобиль 1'),
    Code(codeId: 3, categoryId: 2, name: 'Мой автомобиль 2'),
    Code(codeId: 3, categoryId: 4, name: 'Мой дом'),
    Code(codeId: 3, categoryId: 4, name: 'Моя квартира'),
    Code(codeId: 3, categoryId: 5, name: 'Мой ребенок Саша'),
    Code(codeId: 3, categoryId: 5, name: 'Мой ребенок Маша'),
    Code(codeId: 4, categoryId: 5, name: 'Мой ребенок Витя'),
  ];

  @override
  Future<List<Code>> getCodes(Category category) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return mockCodes
        .where((code) => code.categoryId == category.categoryId)
        .toList();
  }
}
