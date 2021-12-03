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
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

//Mock do repositorio
class MockLoginRepository extends Mock implements ILoginRepository{}

void main() {

  late LoginUseCaseImpl useCase;
  late ILoginRepository repository;
  late LoginCubit cubit;
  LoginController loginController;

  setUp(() {

    AppModule();
    loginController = Modular.get<LoginController>();
    repository = MockLoginRepository();
    useCase = LoginUseCaseImpl(repository);
    cubit = LoginCubit(useCase, loginController);

  });
  Login login = Login(email: 'teste@teste.com', password: '123456');
  final profile =  Profile(email: 'test@gmail.com', name: 'Usuario de teste', profissao: 'Desenvolvedor');

  test('Deve verificar o stado depois do login', () async {
    when(() => repository.getLogin(login)).thenAnswer((_) async => Right<Failure, Profile>(profile));
    final result = await useCase(login);
    expect(result, isNotEmpty);
    expect(cubit.state, equals(LoggedState()));
    print(cubit.state.toString());
  });

  tearDown(() {
    print('Fim do teste');
  });
}
