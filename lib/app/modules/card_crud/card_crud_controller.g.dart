// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_crud_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardCrudController on _CardCrudControllerBase, Store {
  final _$cardNumberAtom = Atom(name: '_CardCrudControllerBase.cardNumber');

  @override
  String get cardNumber {
    _$cardNumberAtom.reportRead();
    return super.cardNumber;
  }

  @override
  set cardNumber(String value) {
    _$cardNumberAtom.reportWrite(value, super.cardNumber, () {
      super.cardNumber = value;
    });
  }

  final _$cardNicknameAtom = Atom(name: '_CardCrudControllerBase.cardNickname');

  @override
  String get cardNickname {
    _$cardNicknameAtom.reportRead();
    return super.cardNickname;
  }

  @override
  set cardNickname(String value) {
    _$cardNicknameAtom.reportWrite(value, super.cardNickname, () {
      super.cardNickname = value;
    });
  }

  final _$userIdAtom = Atom(name: '_CardCrudControllerBase.userId');

  @override
  int get userId {
    _$userIdAtom.reportRead();
    return super.userId;
  }

  @override
  set userId(int value) {
    _$userIdAtom.reportWrite(value, super.userId, () {
      super.userId = value;
    });
  }

  final _$_CardCrudControllerBaseActionController =
      ActionController(name: '_CardCrudControllerBase');

  @override
  dynamic changeCardNumber(String value) {
    final _$actionInfo = _$_CardCrudControllerBaseActionController.startAction(
        name: '_CardCrudControllerBase.changeCardNumber');
    try {
      return super.changeCardNumber(value);
    } finally {
      _$_CardCrudControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCardNickname(String value) {
    final _$actionInfo = _$_CardCrudControllerBaseActionController.startAction(
        name: '_CardCrudControllerBase.changeCardNickname');
    try {
      return super.changeCardNickname(value);
    } finally {
      _$_CardCrudControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUserId(String value) {
    final _$actionInfo = _$_CardCrudControllerBaseActionController.startAction(
        name: '_CardCrudControllerBase.changeUserId');
    try {
      return super.changeUserId(value);
    } finally {
      _$_CardCrudControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardNumber: ${cardNumber},
cardNickname: ${cardNickname},
userId: ${userId}
    ''';
  }
}
