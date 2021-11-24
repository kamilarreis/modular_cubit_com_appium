import 'package:app/pages/profile/domain/entities/profile_entitie.dart';
import 'package:mobx/mobx.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileController with _$ProfileController;

abstract class _ProfileController with Store {

  @observable
  Profile? profile;


  @action
  setState(Profile value) => profile = value;

  @action
  Profile? getProfile() => profile;
}
