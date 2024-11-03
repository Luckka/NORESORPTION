import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/app_modules.dart';

import 'app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModules(), child: const AppWidget(),));
}

