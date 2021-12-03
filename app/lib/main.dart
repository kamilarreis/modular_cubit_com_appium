import 'package:app/app/app_module.dart';
import 'package:app/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  //TODO: para abrir o teclado essa linha deve ser comentada
  //Sugestao usar o build variantes para gerar debug e release
 // enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("pt").then((_) => runApp(ModularApp(module: AppModule(),child: AppWidget(),)));
}