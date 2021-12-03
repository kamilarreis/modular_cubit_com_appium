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
Widget linesText(String title, String body){
  bool isVisible = body != null ? true : false;
  return  Visibility(
      visible: isVisible,
      child: Padding(
        padding: EdgeInsets.only(top: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Text(
                      title, textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),)
                ),
              ],
            ),
            Expanded(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 5, right: 10, bottom: 5),
                      child:  Text(body, textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 15),)
                  ),
                ],
              ),
            )
          ],
        ),
      ));
}

