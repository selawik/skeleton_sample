import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/core/injection.dart' as di;

void main() {
  di.init();

  runApp(const MyApp());
}
