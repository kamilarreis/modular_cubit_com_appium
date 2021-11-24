import 'package:app/pages/profile/presenter/profile_controller.dart';
import 'package:app/pages/util/config_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

final Shader linearGradientDark = LinearGradient(
    colors: <Color>[Colors.tealAccent, Colors.purpleAccent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight
).createShader(Rect.fromLTWH(0.0, 0.0, 550.0, 50.0));
ProfileController profileController = Modular.get<ProfileController>();
ConfigController configController = Modular.get<ConfigController>();

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: configController.defaultLogin(),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Center(
                child: Text('Perfil', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, foreground: Paint()..shader = linearGradientDark),),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                  padding: const EdgeInsets.all(28.0),
                  decoration: BoxDecoration(
                      gradient:   LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.tealAccent.withOpacity(0.5), Colors.purpleAccent.withOpacity(0.5)]
                      ),//,here i want to add opacity
                      border:  Border.all(color: Colors.black54,
                      ),
                      borderRadius:  const BorderRadius.only(
                          topLeft:  Radius.circular(40.0),
                          topRight:  Radius.circular(40.0),
                          bottomLeft:  Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0) )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top:30),
                          child: Center(
                            child: ShaderMask(
                              blendMode: BlendMode.srcATop,
                              shaderCallback: (bounds) => const LinearGradient(
                                  colors: [Colors.tealAccent, Colors.purpleAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                              ).createShader(bounds),
                              child: const Icon(
                                Icons.account_circle,
                                size: 80,
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Nome: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                           Text(profileController.getProfile()!.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Profissão: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                            Text(profileController.getProfile()!.profissao, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Email: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                            Text(profileController.getProfile()!.email, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
