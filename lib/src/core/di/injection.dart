import 'package:get_it/get_it.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/mock_code_service.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';
import 'package:sample/src/home/home_controller.dart';

var locator = GetIt.instance;

void init() {
  _registerServices();
  _registerControllers();

  /// Bottom nav initial value
  locator.registerSingleton(BottomNavigationItem.codes);
}

void _registerServices() {
  /// Register code service
  locator.registerFactory<CodeService>(() => MockCodeService());
}

void _registerControllers() {
  /// Register code controller
  locator.registerFactory(() => CodeController(codeService: locator()));

  /// Home page controller
  locator.registerFactory(() => HomeController(selectedItem: locator()));
}
