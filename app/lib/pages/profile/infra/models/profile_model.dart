//extender entite
import 'package:app/pages/profile/domain/entities/profile_entitie.dart';

class ProfileModel extends Profile{

  const ProfileModel({required String email, required String name,required String profissao}):super(email: email, name: name, profissao: profissao);

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    email: json['email'],
      name: json['nome'],
      profissao: json['profissao'],
  );

  Map<String, dynamic> toJson(){
   final Map<String, dynamic> data = <String, dynamic>{};
   data['email'] = email;
   data['nome'] = name;
   data['profissao'] = profissao;
   return data;
  }
}