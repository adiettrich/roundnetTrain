import 'package:app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app.dart';

void main() {
  runApp(ModularApp(module: TrainAppModule(), child: const TrainApp()));
}
