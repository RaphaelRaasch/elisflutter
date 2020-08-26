// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_formacao_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddFormacaoController on _AddFormacaoControllerBase, Store {
  final _$valueAtom = Atom(name: '_AddFormacaoControllerBase.value');

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

  final _$_AddFormacaoControllerBaseActionController =
      ActionController(name: '_AddFormacaoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_AddFormacaoControllerBaseActionController
        .startAction(name: '_AddFormacaoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AddFormacaoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
