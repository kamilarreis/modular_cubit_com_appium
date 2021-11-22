// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigController on _ConfigControllerBase, Store {
  final _$appNameAtom = Atom(name: '_ConfigControllerBase.appName');

  @override
  String get appName {
    _$appNameAtom.reportRead();
    return super.appName;
  }

  @override
  set appName(String value) {
    _$appNameAtom.reportWrite(value, super.appName, () {
      super.appName = value;
    });
  }

  final _$primaryColorAtom = Atom(name: '_ConfigControllerBase.primaryColor');

  @override
  Color get primaryColor {
    _$primaryColorAtom.reportRead();
    return super.primaryColor;
  }

  @override
  set primaryColor(Color value) {
    _$primaryColorAtom.reportWrite(value, super.primaryColor, () {
      super.primaryColor = value;
    });
  }

  final _$accentColorAtom = Atom(name: '_ConfigControllerBase.accentColor');

  @override
  Color get accentColor {
    _$accentColorAtom.reportRead();
    return super.accentColor;
  }

  @override
  set accentColor(Color value) {
    _$accentColorAtom.reportWrite(value, super.accentColor, () {
      super.accentColor = value;
    });
  }

  final _$primaryColorDarkAtom =
      Atom(name: '_ConfigControllerBase.primaryColorDark');

  @override
  Color get primaryColorDark {
    _$primaryColorDarkAtom.reportRead();
    return super.primaryColorDark;
  }

  @override
  set primaryColorDark(Color value) {
    _$primaryColorDarkAtom.reportWrite(value, super.primaryColorDark, () {
      super.primaryColorDark = value;
    });
  }

  final _$primaryGradientButtonColorAtom =
      Atom(name: '_ConfigControllerBase.primaryGradientButtonColor');

  @override
  Color get primaryGradientButtonColor {
    _$primaryGradientButtonColorAtom.reportRead();
    return super.primaryGradientButtonColor;
  }

  @override
  set primaryGradientButtonColor(Color value) {
    _$primaryGradientButtonColorAtom
        .reportWrite(value, super.primaryGradientButtonColor, () {
      super.primaryGradientButtonColor = value;
    });
  }

  final _$secundaryGradientButtonColorAtom =
      Atom(name: '_ConfigControllerBase.secundaryGradientButtonColor');

  @override
  Color get secundaryGradientButtonColor {
    _$secundaryGradientButtonColorAtom.reportRead();
    return super.secundaryGradientButtonColor;
  }

  @override
  set secundaryGradientButtonColor(Color value) {
    _$secundaryGradientButtonColorAtom
        .reportWrite(value, super.secundaryGradientButtonColor, () {
      super.secundaryGradientButtonColor = value;
    });
  }

  final _$_ConfigControllerBaseActionController =
      ActionController(name: '_ConfigControllerBase');

  @override
  dynamic initialConfig() {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.initialConfig');
    try {
      return super.initialConfig();
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appName: ${appName},
primaryColor: ${primaryColor},
accentColor: ${accentColor},
primaryColorDark: ${primaryColorDark},
primaryGradientButtonColor: ${primaryGradientButtonColor},
secundaryGradientButtonColor: ${secundaryGradientButtonColor}
    ''';
  }
}
