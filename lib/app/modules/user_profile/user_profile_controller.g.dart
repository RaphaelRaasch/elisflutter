// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileController on _UserProfileControllerBase, Store {
  final _$formacaoAtom = Atom(name: '_UserProfileControllerBase.formacao');

  @override
  List<FormacaoModel> get formacao {
    _$formacaoAtom.reportRead();
    return super.formacao;
  }

  @override
  set formacao(List<FormacaoModel> value) {
    _$formacaoAtom.reportWrite(value, super.formacao, () {
      super.formacao = value;
    });
  }

  final _$addFormacaoAsyncAction =
      AsyncAction('_UserProfileControllerBase.addFormacao');

  @override
  Future<dynamic> addFormacao() {
    return _$addFormacaoAsyncAction.run(() => super.addFormacao());
  }

  final _$getFormacaoAsyncAction =
      AsyncAction('_UserProfileControllerBase.getFormacao');

  @override
  Future<dynamic> getFormacao() {
    return _$getFormacaoAsyncAction.run(() => super.getFormacao());
  }

  @override
  String toString() {
    return '''
formacao: ${formacao}
    ''';
  }
}
