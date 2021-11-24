import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:app/pages/util/errors/erros_util.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepository {
  Future<Either<Failure, Profile>> getFullConsultationByCar(Login login);
}