// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enroll_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnrollController on _EnrollControllerBase, Store {
  Computed<bool> _$validateEmailComputed;

  @override
  bool get validateEmail =>
      (_$validateEmailComputed ??= Computed<bool>(() => super.validateEmail,
              name: '_EnrollControllerBase.validateEmail'))
          .value;
  Computed<bool> _$validatePasswordComputed;

  @override
  bool get validatePassword => (_$validatePasswordComputed ??= Computed<bool>(
          () => super.validatePassword,
          name: '_EnrollControllerBase.validatePassword'))
      .value;
  Computed<bool> _$validateConfirmedPasswordComputed;

  @override
  bool get validateConfirmedPassword => (_$validateConfirmedPasswordComputed ??=
          Computed<bool>(() => super.validateConfirmedPassword,
              name: '_EnrollControllerBase.validateConfirmedPassword'))
      .value;
  Computed<bool> _$validateCPFComputed;

  @override
  bool get validateCPF =>
      (_$validateCPFComputed ??= Computed<bool>(() => super.validateCPF,
              name: '_EnrollControllerBase.validateCPF'))
          .value;
  Computed<bool> _$validateNameComputed;

  @override
  bool get validateName =>
      (_$validateNameComputed ??= Computed<bool>(() => super.validateName,
              name: '_EnrollControllerBase.validateName'))
          .value;
  Computed<bool> _$validateLastNameComputed;

  @override
  bool get validateLastName => (_$validateLastNameComputed ??= Computed<bool>(
          () => super.validateLastName,
          name: '_EnrollControllerBase.validateLastName'))
      .value;
  Computed<bool> _$isDataFieldsValidComputed;

  @override
  bool get isDataFieldsValid => (_$isDataFieldsValidComputed ??= Computed<bool>(
          () => super.isDataFieldsValid,
          name: '_EnrollControllerBase.isDataFieldsValid'))
      .value;
  Computed<bool> _$isLoginFieldsValidComputed;

  @override
  bool get isLoginFieldsValid => (_$isLoginFieldsValidComputed ??=
          Computed<bool>(() => super.isLoginFieldsValid,
              name: '_EnrollControllerBase.isLoginFieldsValid'))
      .value;

  final _$enrolledEmailAtom = Atom(name: '_EnrollControllerBase.enrolledEmail');

  @override
  String get enrolledEmail {
    _$enrolledEmailAtom.reportRead();
    return super.enrolledEmail;
  }

  @override
  set enrolledEmail(String value) {
    _$enrolledEmailAtom.reportWrite(value, super.enrolledEmail, () {
      super.enrolledEmail = value;
    });
  }

  final _$enrolledPasswordAtom =
      Atom(name: '_EnrollControllerBase.enrolledPassword');

  @override
  String get enrolledPassword {
    _$enrolledPasswordAtom.reportRead();
    return super.enrolledPassword;
  }

  @override
  set enrolledPassword(String value) {
    _$enrolledPasswordAtom.reportWrite(value, super.enrolledPassword, () {
      super.enrolledPassword = value;
    });
  }

  final _$confirmedPasswordAtom =
      Atom(name: '_EnrollControllerBase.confirmedPassword');

  @override
  String get confirmedPassword {
    _$confirmedPasswordAtom.reportRead();
    return super.confirmedPassword;
  }

  @override
  set confirmedPassword(String value) {
    _$confirmedPasswordAtom.reportWrite(value, super.confirmedPassword, () {
      super.confirmedPassword = value;
    });
  }

  final _$enrolledNameAtom = Atom(name: '_EnrollControllerBase.enrolledName');

  @override
  String get enrolledName {
    _$enrolledNameAtom.reportRead();
    return super.enrolledName;
  }

  @override
  set enrolledName(String value) {
    _$enrolledNameAtom.reportWrite(value, super.enrolledName, () {
      super.enrolledName = value;
    });
  }

  final _$enrolledLastNameAtom =
      Atom(name: '_EnrollControllerBase.enrolledLastName');

  @override
  String get enrolledLastName {
    _$enrolledLastNameAtom.reportRead();
    return super.enrolledLastName;
  }

  @override
  set enrolledLastName(String value) {
    _$enrolledLastNameAtom.reportWrite(value, super.enrolledLastName, () {
      super.enrolledLastName = value;
    });
  }

  final _$enrolledCPFAtom = Atom(name: '_EnrollControllerBase.enrolledCPF');

  @override
  String get enrolledCPF {
    _$enrolledCPFAtom.reportRead();
    return super.enrolledCPF;
  }

  @override
  set enrolledCPF(String value) {
    _$enrolledCPFAtom.reportWrite(value, super.enrolledCPF, () {
      super.enrolledCPF = value;
    });
  }

  final _$passwordVisibilityAtom =
      Atom(name: '_EnrollControllerBase.passwordVisibility');

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  final _$_EnrollControllerBaseActionController =
      ActionController(name: '_EnrollControllerBase');

  @override
  void setPasswordVisibility() {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setPasswordVisibility');
    try {
      return super.setPasswordVisibility();
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnrolledEmail(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setEnrolledEmail');
    try {
      return super.setEnrolledEmail(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnrolledPassword(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setEnrolledPassword');
    try {
      return super.setEnrolledPassword(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmedPassword(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setConfirmedPassword');
    try {
      return super.setConfirmedPassword(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnrolledName(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setEnrolledName');
    try {
      return super.setEnrolledName(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnrolledLastName(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setEnrolledLastName');
    try {
      return super.setEnrolledLastName(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnrolledCPF(String value) {
    final _$actionInfo = _$_EnrollControllerBaseActionController.startAction(
        name: '_EnrollControllerBase.setEnrolledCPF');
    try {
      return super.setEnrolledCPF(value);
    } finally {
      _$_EnrollControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enrolledEmail: ${enrolledEmail},
enrolledPassword: ${enrolledPassword},
confirmedPassword: ${confirmedPassword},
enrolledName: ${enrolledName},
enrolledLastName: ${enrolledLastName},
enrolledCPF: ${enrolledCPF},
passwordVisibility: ${passwordVisibility},
validateEmail: ${validateEmail},
validatePassword: ${validatePassword},
validateConfirmedPassword: ${validateConfirmedPassword},
validateCPF: ${validateCPF},
validateName: ${validateName},
validateLastName: ${validateLastName},
isDataFieldsValid: ${isDataFieldsValid},
isLoginFieldsValid: ${isLoginFieldsValid}
    ''';
  }
}
