import 'package:app/pages/login/presenter/component/login_component.dart';
import 'package:app/pages/login/presenter/cubit/login_cubit.dart';
import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:app/pages/login/presenter/login_controller.dart';
import 'package:app/pages/profile/presenter/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

LoginController loginController = Modular.get<LoginController>();
ProfileController profileController = Modular.get<ProfileController>();
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => Modular.get<LoginCubit>(),
      child:  Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state){
            if (state is LoggedOutState) {
              return getLogin(context);
            } else if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.purpleAccent,),
              );
            } else if (state is LoggedState) {
              final profile = state.profile;
              profileController.setState(profile);
              Modular.to.pushReplacementNamed("profile", arguments: true, forRoot: false);
            }
            return Container();

          },
        ),
      ),
    );
  }
}
