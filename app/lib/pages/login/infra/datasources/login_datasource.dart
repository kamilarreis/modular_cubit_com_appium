import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/profile/infra/models/profile_model.dart';

abstract class ILoginDatasource{
  Future<ProfileModel> getUserLogin(Login login);
}