// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_curso_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListCursoController on _ListCursoControllerBase, Store {
  final _$cursosAtom = Atom(name: '_ListCursoControllerBase.cursos');

  @override
  List<CursoModel> get cursos {
    _$cursosAtom.reportRead();
    return super.cursos;
  }

  @override
  set cursos(List<CursoModel> value) {
    _$cursosAtom.reportWrite(value, super.cursos, () {
      super.cursos = value;
    });
  }

  final _$getCursoAsyncAction =
      AsyncAction('_ListCursoControllerBase.getCurso');

  @override
  Future<dynamic> getCurso() {
    return _$getCursoAsyncAction.run(() => super.getCurso());
  }

  @override
  String toString() {
    return '''
cursos: ${cursos}
    ''';
  }
}
