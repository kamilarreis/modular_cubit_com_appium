import 'package:app/pages/login/domain/entities/login_entitie.dart';
import 'package:app/pages/login/presenter/cubit/login_cubit.dart';
import 'package:app/pages/login/presenter/login_page.dart';
import 'package:app/pages/util/config_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/src/provider.dart';

import '../../../two_page.dart';

ConfigController configController = Modular.get<ConfigController>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
 final _formKey = GlobalKey<FormState>();

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
             Padding(
              padding: EdgeInsets.only(top:50),
              child: Center(
                child: ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) => const LinearGradient(
                      colors: [Colors.tealAccent, Colors.purpleAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ).createShader(bounds),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                  ),
                ),
              )
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: TextFormField(
                      key: const Key('input-user'),
                      controller: emailController,
                      cursorColor: configController.primaryLoginButtonColor,
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: ShaderMask(
                          blendMode: BlendMode.srcATop,
                          shaderCallback: (bounds) => const LinearGradient(
                              colors: [Colors.tealAccent, Colors.purpleAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ).createShader(bounds),
                          child: const Icon(
                            Icons.mail,
                            size: 30,
                          ),
                        ),
                        hintText: "E-mail ",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: configController.secundaryLoginButtonColor, width: 0.5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.tealAccent, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: configController.primaryLoginButtonColor, width: 0.5),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.red, width: 0.5),
                        ),
                      ),
                      validator: (text) {
                        if(text!.isEmpty) {
                          return "Favor preencher o email.";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child:  TextFormField(
                      key: const Key('input-password'),
                      controller: passwordController,
                      cursorColor:configController.primaryLoginButtonColor,
                      textAlign: TextAlign.left,
                      obscureText: true,
                      style: const TextStyle(color:Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: ShaderMask(
                          blendMode: BlendMode.srcATop,
                          shaderCallback: (bounds) => const LinearGradient(
                              colors: [Colors.tealAccent, Colors.purpleAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ).createShader(bounds),
                          child: const Icon(
                            Icons.lock,
                            size: 30,
                          ),
                        ),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: configController.secundaryLoginButtonColor, width: 0.5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.tealAccent, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: configController.primaryLoginButtonColor, width: 0.5),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.red, width: 0.5),
                        ),
                      ),
                      validator: (text) {
                        return text!.isEmpty ? "Favor digitar a senha" :  null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:80, left: 60, right: 60),
                width: double.infinity,
                child: TextButton(
                    style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent),),
                    key: const Key('btn-login'),
                    onPressed: () {
                     if(_formKey.currentState!.validate()){
                       Login login = Login(email: emailController.text, password: passwordController.text);
                       final loginCubit = context.read<LoginCubit>();
                       loginCubit.logar(login);
                     }
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
                          child: Text('Login', textAlign: TextAlign.center,style: TextStyle(color: Colors.deepPurpleAccent),),
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
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true,reverse: true),
                child: Container(
                    height: MediaQuery.of(context).size.height/4,
                 decoration:  BoxDecoration (
                   gradient:  LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [Colors.tealAccent.withOpacity(0.6), Colors.purpleAccent.withOpacity(0.6)]
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

