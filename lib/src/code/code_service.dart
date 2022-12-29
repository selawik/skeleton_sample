import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/code/entities/code.dart';

abstract class CodeService {
  Future<List<Code>> getCodes(Category category);
}
