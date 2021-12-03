import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/external/api_data_source_impl.dart';
import 'package:app/pages/login/infra/repositories/login_repository_impl.dart';
import 'package:app/pages/login/presenter/cubit/login_cubit.dart';
import 'package:app/pages/login/presenter/login_controller.dart';
import 'package:app/pages/login/presenter/login_page.dart';
import 'package:app/pages/profile/presenter/profile_controller.dart';
import 'package:app/pages/profile/presenter/profile_page.dart';
import 'package:app/pages/splash/presenter/splash_controller.dart';
import 'package:app/pages/splash/presenter/splash_page.dart';
import 'package:app/pages/util/config_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{

  @override
  List<Bind> get binds => [
    Bind((i) => SplashController()),
    Bind((i) => ConfigController()),
    Bind((i) => LoginController(i.get())),
    Bind((i) => ApiDatasourceImpl()),
    Bind((i) => LoginRepositoryImpl(i.get())),
    Bind((i) => LoginUseCaseImpl(i.get())),
    Bind((i) => LoginCubit(i.get(), i.get())),
    Bind((i) => ProfileController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
    ChildRoute(Modular.initialRoute + "login", child: (_, args) => LoginPage()),
    ChildRoute(Modular.initialRoute + "profile", child: (_, args) => ProfilePage()),
  ];

}