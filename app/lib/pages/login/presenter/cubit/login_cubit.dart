import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit(this.loginUseCase) : super(LoggedOutState());

  final LoginUseCase loginUseCase;

  //troca de estados
  void logar(Login login) async{
    try{
      emit(LoadingState());
      final profile = await loginUseCase(login);
      emit(LoggedState(profile));
    }catch(e){
      emit(ErrorState(mensagem: e.toString()));
    }

  }
}