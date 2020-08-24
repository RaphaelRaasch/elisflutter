// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_caso_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaCasoController on _ListaCasoControllerBase, Store {
  final _$casosAtom = Atom(name: '_ListaCasoControllerBase.casos');

  @override
  List<CasoModel> get casos {
    _$casosAtom.reportRead();
    return super.casos;
  }

  @override
  set casos(List<CasoModel> value) {
    _$casosAtom.reportWrite(value, super.casos, () {
      super.casos = value;
    });
  }

  final _$getCollectsAsyncAction =
      AsyncAction('_ListaCasoControllerBase.getCollects');

  @override
  Future<dynamic> getCollects() {
    return _$getCollectsAsyncAction.run(() => super.getCollects());
  }

  @override
  String toString() {
    return '''
casos: ${casos}
    ''';
  }
}
