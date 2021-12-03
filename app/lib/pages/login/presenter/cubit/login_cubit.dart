import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:app/pages/login/presenter/login_controller.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginCubit extends Cubit<LoginState>{

  LoginCubit(this.loginUseCase, this.loginController) : super(LoggedOutState());

  final LoginUseCase loginUseCase;
  final LoginController loginController;

  //troca de estados
  void logar(Login login) async{
    try{
      emit(LoadingState());
      Profile profileModel;
      final profile = await loginUseCase(login);
      profileModel =  await loginController.getProfile(login, profile);
      emit(LoggedState(profileModel));
    }catch(e){
      emit(ErrorState(mensagem: e.toString()));
    }

  }
}