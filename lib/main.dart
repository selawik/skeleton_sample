import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/core/di/injection.dart' as di;

void main() {
  di.init();

  runApp(const MyApp());
}
