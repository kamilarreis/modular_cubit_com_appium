import 'package:app/app/app_module.dart';
import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/repositories/login_repository.dart';
import 'package:app/pages/login/domain/usecases/login_use_case.dart';
import 'package:app/pages/login/presenter/cubit/login_cubit.dart';
import 'package:app/pages/login/presenter/login_controller.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:app/pages/profile/presenter/cubit/profile_state.dart';
import 'package:app/pages/util/errors/erros_util.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';


//Mock do repositorio
class MockLoginRepository extends Mock implements ILoginRepository {}

void main() {
  late LoginUseCaseImpl useCase;
  late ILoginRepository repository;
  late LoginCubit cubit;


  setUp(() {
      repository = MockLoginRepository();
      useCase = LoginUseCaseImpl(repository);
      final loginController = LoginController(useCase);
      cubit = LoginCubit(useCase, loginController);
    });

    Login login = Login(email: 'teste@teste.com', password: '123456');
    final profile = Profile(email: 'test@gmail.com', name: 'Usuario de teste', profissao: 'Desenvolvedor');

  test('Deve verificar o estado depois do login',()async {
    when(() => repository.getLogin(login)).thenAnswer((_) async => Right<Failure, Profile>(profile));
    final result = await useCase(login);
    expect(result, equals(Right<Failure, Profile> (profile)));
    print(result.toString());
  });

    test('Deve verificar o estado depois do login', () async {
      when(() => repository.getLogin(login)).thenAnswer((_) async => Right<Failure, Profile>(profile));
      final result = await useCase(login);
      expect(result, equals(Right<Failure, Profile> (profile)));
      expect(cubit.state, equals(LoggedState()));

    });

    tearDown(() {
      print('Fim do teste');
    });
  }

