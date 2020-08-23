// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curse_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurseController on _CurseControllerBase, Store {
  final _$valueAtom = Atom(name: '_CurseControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$titleAtom = Atom(name: '_CurseControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_CurseControllerBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$_CurseControllerBaseActionController =
      ActionController(name: '_CurseControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CurseControllerBaseActionController.startAction(
        name: '_CurseControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CurseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
title: ${title},
description: ${description}
    ''';
  }
}
