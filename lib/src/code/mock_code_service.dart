import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

class MockCodeService implements CodeService {
  final List<Code> mockCodes = [
    Code(codeId: 1, category: Category.kids, name: 'Мой ребенок'),
    Code(codeId: 2, category: Category.home, name: 'Мой кошелек'),
    Code(codeId: 3, category: Category.favorite, name: 'Мой автомобиль 1'),
    Code(codeId: 3, category: Category.car, name: 'Мой автомобиль 2'),
    Code(codeId: 3, category: Category.home, name: 'Мой дом'),
    Code(codeId: 3, category: Category.home, name: 'Моя квартира'),
    Code(codeId: 3, category: Category.kids, name: 'Мой ребенок Саша'),
    Code(codeId: 3, category: Category.kids, name: 'Мой ребенок Маша'),
    Code(codeId: 4, category: Category.kids, name: 'Мой ребенок Витя'),
    Code(codeId: 4, category: Category.kids, name: 'Мой ребенок Витя'),
    Code(codeId: 4, category: Category.kids, name: 'Мой ребенок Витя'),
    Code(codeId: 4, category: Category.kids, name: 'Мой ребенок Витя'),
    Code(codeId: 4, category: Category.favorite, name: 'Мой ребенок Витя'),
  ];

  @override
  Future<List<Code>> getCodes(Category category) async {
    await Future.delayed(const Duration(milliseconds: 1000));

    if (category.isAll) {
      return mockCodes;
    }

    return mockCodes.where((code) => code.category == category).toList();
  }
}
