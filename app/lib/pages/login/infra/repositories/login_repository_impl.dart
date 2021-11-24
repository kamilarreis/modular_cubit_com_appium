import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/domain/repositories/login_repository.dart';
import 'package:app/pages/login/infra/datasources/login_datasource.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:app/pages/util/errors/erros_util.dart';
import 'package:dartz/dartz.dart';

class LoginRepositoryImpl implements ILoginRepository {
  final ILoginDatasource datasource;

  LoginRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Profile>> getFullConsultationByCar(Login login) async {
    final Profile profile;
    try{
      profile = await datasource.getUserLogin(login);
      return right(profile);
    }catch(e){
      String mensagem = e.toString();
      if(mensagem.contains('subtype')){
        return left(ErrorJsonConvert());

      }else{
        return left(ErrorSearch());
      }
    }
  }

}