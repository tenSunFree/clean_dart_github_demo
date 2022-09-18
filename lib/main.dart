import 'package:common/main.dart';
import 'package:flutter/material.dart';
import 'package:home/app/app_module.dart';
import 'package:home/app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
