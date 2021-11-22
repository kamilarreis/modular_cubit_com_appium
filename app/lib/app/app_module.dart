import 'package:app/pages/login/presenter/login_page.dart';
import 'package:app/pages/one_page.dart';
import 'package:app/pages/splash/presenter/splash_controller.dart';
import 'package:app/pages/splash/presenter/splash_page.dart';
import 'package:app/pages/util/config_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{

  @override
  List<Bind> get binds => [
    // Bind((i) => MenuController(configController: i.get(),authController: i.get())),
     Bind((i) => SplashController()),
    Bind((i) => OnePage()),
    Bind((i) => ConfigController()),
    // Bind((i) => FreeConsultationController(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
    ChildRoute(Modular.initialRoute + "login", child: (_, args) => LoginPage()),
    // ChildRoute(Modular.initialRoute + "alert", child: (_, args) => AlertPage(route: args.data,)),
  ];

}