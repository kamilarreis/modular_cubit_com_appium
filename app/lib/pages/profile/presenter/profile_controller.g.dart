// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileController, Store {
  final _$profileAtom = Atom(name: '_ProfileController.profile');

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

  final _$_ProfileControllerActionController =
      ActionController(name: '_ProfileController');

  @override
  dynamic setState(Profile value) {
    final _$actionInfo = _$_ProfileControllerActionController.startAction(
        name: '_ProfileController.setState');
    try {
      return super.setState(value);
    } finally {
      _$_ProfileControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  Profile? getProfile() {
    final _$actionInfo = _$_ProfileControllerActionController.startAction(
        name: '_ProfileController.getProfile');
    try {
      return super.getProfile();
    } finally {
      _$_ProfileControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
profile: ${profile}
    ''';
  }
}
