import 'package:flutter/material.dart';
import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'package:common/main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
