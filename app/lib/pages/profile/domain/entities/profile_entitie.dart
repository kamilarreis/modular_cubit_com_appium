import 'package:equatable/equatable.dart';

class Profile extends Equatable{
  final String email;
  final String name;
  final String profissao;

  const Profile( {required this.email, required this.name, required this.profissao});

  @override
  List<Object?> get props => [email, name, profissao];
}