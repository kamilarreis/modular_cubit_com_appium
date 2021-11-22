import 'package:app/app/app_module.dart';
import 'package:app/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() async {
  enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("pt").then((_) => runApp(ModularApp(module: AppModule(),child: AppWidget(),)));
}