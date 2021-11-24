import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoggedOutState extends LoginState{

}

class LoggedState extends LoginState{
  final Profile profile;
  const LoggedState(this.profile);
}

class LoadingState extends LoginState {
}

class ErrorState extends LoginState {
  ErrorState({required this.mensagem});
  final String mensagem;
}