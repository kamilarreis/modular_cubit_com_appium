import 'package:app/pages/splash/presenter/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';


class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  SplashController splashController = Modular.get<SplashController>();

  @override
  void initState() {
    super.initState();
    splashController.getConfigurations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          if (!splashController.continueFlow) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset("images/logo_kami.png",width: 210,height: 210,),
              )
            );
          } else {
            Modular.to.pushReplacementNamed(Modular.initialRoute + "login",forRoot: true);
            return Container();
          }
        },
      )
    );
  }
}