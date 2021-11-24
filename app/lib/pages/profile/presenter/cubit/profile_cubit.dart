import 'package:app/pages/login/presenter/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<LoginState>{
  ProfileCubit() : super(LoadingState());

}