//extender entite
import 'package:app/pages/login/domain/entities/login_entitie.dart';

class LoginModel extends Login{

  const LoginModel({required String email, required String password}):super(email: email, password: password);

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    email: json['email'],
    password: json['password']
  );

  Map<String, dynamic> toJson(){
   final Map<String, dynamic> data = <String, dynamic>{};
   data['email'] = email;
   data['password'] = password;
   return data;
  }
}