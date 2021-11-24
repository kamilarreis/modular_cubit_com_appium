import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {

  final LoginUseCase loginUseCase;

  _LoginController(this.loginUseCase);

  @observable
  Profile? profile;

  @observable
  LoginState state = LoggedOutState();

  @action
  setState(LoginState value) => state = value;

  @action
  Future stateReaction (Login login) async{
    makeSearch(login);

    setState(LoadingState());
  }

  @action
  Future<LoginState> makeSearch(Login login) async {
    var result = await loginUseCase(login);
    profile = result;
    return setState(LoggedState(result));
  }

  Future<Profile?> getProfile() async {
    if(profile != null){
      return profile;
    }
  }
}
