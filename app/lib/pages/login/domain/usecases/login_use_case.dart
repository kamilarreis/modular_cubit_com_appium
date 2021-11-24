import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/repositories/login_repository.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:dartz/dartz.dart';

abstract class LoginUseCase {
  Future<Profile> call(Login login);
}

class LoginUseCaseImpl implements LoginUseCase{
  final ILoginRepository repository;

  LoginUseCaseImpl(this.repository);


  @override
  Future<Profile> call(Login login) async {
    Profile profile;
    var model;
    final result = await repository.getFullConsultationByCar(login);
    result.fold((error) => left(error), (success) {
      model = success;
      return model;
    });
    profile = model;
    return profile;
  }

}