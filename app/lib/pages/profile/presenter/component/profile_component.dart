import 'package:app/pages/util/config_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

ConfigController configController = Modular.get<ConfigController>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
 final _formKey = GlobalKey<FormState>();

Widget getProfile(BuildContext context) {
  return Container(
   decoration: configController.defaultLogin(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
      Align(
        alignment: Alignment.center,

      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [

            ],
          )
          ,
        )
      ],
    ),
  );
}

