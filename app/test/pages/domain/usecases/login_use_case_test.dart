

import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/repositories/login_repository.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:app/pages/util/errors/erros_util.dart';
import 'package:dartz/dartz.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';


//Mock do repositorio
class MockLoginRepository extends Mock implements ILoginRepository{}

void main(){
 late LoginUseCaseImpl useCase;
 late ILoginRepository repository;
  Login login = Login(email: 'teste@teste.com', password: '123456');

  //Inicia o caso de uso
  setUp(() {

    //inicializando o repositorio
    repository = MockLoginRepository();
    useCase = LoginUseCaseImpl(repository);
  });

  final profile = Profile(email: 'test@gmail.com', name: 'Usuario de teste', profissao: 'Desenvolvedor');

  test('Teste da reposta do login, retornando o perfil',()async {
    when(() => repository.getLogin(login)).thenAnswer((_) async => Right<Failure, Profile>(profile));
    final result = await useCase(login);
    expect(result, equals(Right<Failure, Profile> (profile)));
    print(result.toString());
  });

 test('Teste que espera erro',()async {
   when(() => repository.getLogin(login)).thenAnswer((_) async => Right<Failure, Profile>(profile));
   final result = await useCase(login);
   expect(result, equals(Right<Failure, Profile> (profile)));
   print(result.toString());
 });

}