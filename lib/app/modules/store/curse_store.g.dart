// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curse_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurseStore on _CurseStoreBase, Store {
  final _$curseAtom = Atom(name: '_CurseStoreBase.curse');

  @override
  List<CurseModel> get curse {
    _$curseAtom.reportRead();
    return super.curse;
  }

  @override
  set curse(List<CurseModel> value) {
    _$curseAtom.reportWrite(value, super.curse, () {
      super.curse = value;
    });
  }

  final _$_CurseStoreBaseActionController =
      ActionController(name: '_CurseStoreBase');

  @override
  void setCurse(List<CurseModel> v) {
    final _$actionInfo = _$_CurseStoreBaseActionController.startAction(
        name: '_CurseStoreBase.setCurse');
    try {
      return super.setCurse(v);
    } finally {
      _$_CurseStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
curse: ${curse}
    ''';
  }
}
