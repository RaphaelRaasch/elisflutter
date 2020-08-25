// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caso_clinico_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CasoClinicoController on _CasoClinicoControllerBase, Store {
  final _$titleAtom = Atom(name: '_CasoClinicoControllerBase.title');

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

  final _$descriptionAtom =
      Atom(name: '_CasoClinicoControllerBase.description');

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

  final _$addCasoAsyncAction =
      AsyncAction('_CasoClinicoControllerBase.addCaso');

  @override
  Future<dynamic> addCaso() {
    return _$addCasoAsyncAction.run(() => super.addCaso());
  }

  final _$addPublicCasoAsyncAction =
      AsyncAction('_CasoClinicoControllerBase.addPublicCaso');

  @override
  Future<dynamic> addPublicCaso() {
    return _$addPublicCasoAsyncAction.run(() => super.addPublicCaso());
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description},
error: ${error}
    ''';
  }
}
