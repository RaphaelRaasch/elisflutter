// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curso_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CursoController on _CursoControllerBase, Store {
  final _$titleAtom = Atom(name: '_CursoControllerBase.title');

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

  final _$dataAtom = Atom(name: '_CursoControllerBase.data');

  @override
  String get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(String value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$localAtom = Atom(name: '_CursoControllerBase.local');

  @override
  String get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(String value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
    });
  }

<<<<<<< HEAD:lib/app/modules/curso/curso_controller.g.dart
  final _$descriptionAtom = Atom(name: '_CursoControllerBase.description');

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

  final _$horasAtom = Atom(name: '_CursoControllerBase.horas');

  @override
  int get horas {
    _$horasAtom.reportRead();
    return super.horas;
  }
=======
  final _$errorAtom = Atom(name: '_CurseControllerBase.error');

  @override
  bool get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$createCurseAsyncAction =
      AsyncAction('_CurseControllerBase.createCurse');
>>>>>>> 1a6e554f155a1d58df31788ea38384be1605e467:lib/app/modules/curse/curse_controller.g.dart

  @override
  set horas(int value) {
    _$horasAtom.reportWrite(value, super.horas, () {
      super.horas = value;
    });
  }

  final _$addCursoAsyncAction = AsyncAction('_CursoControllerBase.addCurso');

  @override
  Future<dynamic> addCurso() {
    return _$addCursoAsyncAction.run(() => super.addCurso());
  }

  @override
  String toString() {
    return '''
title: ${title},
data: ${data},
local: ${local},
description: ${description},
<<<<<<< HEAD:lib/app/modules/curso/curso_controller.g.dart
horas: ${horas}
=======
local: ${local},
error: ${error}
>>>>>>> 1a6e554f155a1d58df31788ea38384be1605e467:lib/app/modules/curse/curse_controller.g.dart
    ''';
  }
}
