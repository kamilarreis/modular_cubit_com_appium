import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoggedOutState extends LoginState{

}

class LoggedState extends LoginState{

}

class LoadingState extends LoginState {
}

class ErrorState extends LoginState {
  ErrorState({required this.mensagem});
  final String mensagem;
}