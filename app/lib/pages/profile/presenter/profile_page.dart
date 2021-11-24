import 'package:app/pages/profile/presenter/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}
ProfileController profileController = Modular.get<ProfileController>();


class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  Center(
          child:  Text(profileController.getProfile()!.toString()),
        ),
      ),
    );
  }
}
