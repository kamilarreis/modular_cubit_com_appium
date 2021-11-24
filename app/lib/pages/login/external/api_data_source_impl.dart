import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/external/mock/profileMock.dart';
import 'package:app/pages/login/infra/datasources/login_datasource.dart';
import 'package:app/pages/profile/infra/models/profile_model.dart';

class ApiDatasourceImpl implements ILoginDatasource {

  @override
  Future<ProfileModel> getUserLogin(Login login) async {
    var json = profileMock;
    ProfileModel model = ProfileModel.fromJson(json);
    return model;
  }
}