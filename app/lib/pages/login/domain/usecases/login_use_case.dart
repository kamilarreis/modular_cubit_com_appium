import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/repositories/login_repository.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:app/pages/util/errors/erros_util.dart';
import 'package:dartz/dartz.dart';

abstract class LoginUseCase {
  Future<Either<Failure,Profile>> call(Login login);
}

class LoginUseCaseImpl implements LoginUseCase{
  final ILoginRepository repository;

  LoginUseCaseImpl(this.repository);

  @override
  Future<Either<Failure,Profile>> call(Login login) async {
    var model;
    final result = await repository.getLogin(login);
    result.fold((error) => left(error), (success) {
      model = success;
      return model;
    });
    return result;
  }

}