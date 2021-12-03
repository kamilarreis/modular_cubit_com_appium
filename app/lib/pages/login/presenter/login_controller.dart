import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {

  final LoginUseCase loginUseCase;

  _LoginController(this.loginUseCase);

  @observable
  Profile? profile;

  Future<Profile> getProfile(Login login, final profile) async {
    Profile profileModel;
    var model;
    profile.fold((error) => left(error), (success) {
      model = success;
      return model;
    });
    profileModel = model;
    return profileModel;
  }
}
