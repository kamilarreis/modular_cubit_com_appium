// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  final _$profileAtom = Atom(name: '_LoginController.profile');

  @override
  Profile? get profile {
    _$profileAtom.reportRead();
    return super.profile;
  }

  @override
  set profile(Profile? value) {
    _$profileAtom.reportWrite(value, super.profile, () {
      super.profile = value;
    });
  }

  final _$stateAtom = Atom(name: '_LoginController.state');

  @override
  LoginState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(LoginState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$stateReactionAsyncAction =
      AsyncAction('_LoginController.stateReaction');

  @override
  Future<dynamic> stateReaction(Login login) {
    return _$stateReactionAsyncAction.run(() => super.stateReaction(login));
  }

  final _$makeSearchAsyncAction = AsyncAction('_LoginController.makeSearch');

  @override
  Future<LoginState> makeSearch(Login login) {
    return _$makeSearchAsyncAction.run(() => super.makeSearch(login));
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  dynamic setState(LoginState value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setState');
    try {
      return super.setState(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
profile: ${profile},
state: ${state}
    ''';
  }
}
