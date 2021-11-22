import 'package:app/pages/util/config_controller.dart';
import 'package:app/widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../two_page.dart';

ConfigController configController = Modular.get<ConfigController>();

Widget getLogin(BuildContext context) {
  return Container(
   decoration: configController.defaultLogin(),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
      Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top:30),
              child:  Icon(
                Icons.person,
                size: 100,
                color: Colors.deepPurpleAccent,
              ),
            ),
             Padding(
              padding: EdgeInsets.all(20),
              child:  Container(
                child:  TextFormField(
                 enabled: true,
                  key: const Key('input-user'),
                  style: const TextStyle(color: Colors.white),
                  validator: (text) {
                    return text!.isEmpty ? "Favor digitar o email" :  null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'User',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  obscureText: false,
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:  Container(
                child:
                TextFormField(
                  key: const Key('input-password'),
                  style: const TextStyle(color: Colors.white),
                  validator: (text) {
                    return text!.isEmpty ? "Favor digitar a senha" :  null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  obscureText: true,
                )
              )
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent),),
                    key: const Key('btn-login'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => TwoPage()));
                    },
                    child: Ink(
                      decoration: const BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:  Container(
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                          child: Text('Login', textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
                        ),
                      ),
                    )
                )
            )
          ],),
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true,reverse: true),
                child: Container(
                    height: MediaQuery.of(context).size.height/4,
                 decoration: const BoxDecoration (
                   gradient: LinearGradient(
                //       transform: GradientRotation(0.7853982),
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [ Colors.tealAccent, Colors.purpleAccent]
                   ),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),

                 )
                ),
              ),
            ],
          )
          ,
        )
      ],
    ),
  );
}

