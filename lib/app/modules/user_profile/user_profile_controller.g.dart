// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileController on _UserProfileControllerBase, Store {
  final _$nameAtom = Atom(name: '_UserProfileControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_UserProfileControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$crpAtom = Atom(name: '_UserProfileControllerBase.crp');

  @override
  String get crp {
    _$crpAtom.reportRead();
    return super.crp;
  }

  @override
  set crp(String value) {
    _$crpAtom.reportWrite(value, super.crp, () {
      super.crp = value;
    });
  }

  final _$gestorAtom = Atom(name: '_UserProfileControllerBase.gestor');

  @override
  bool get gestor {
    _$gestorAtom.reportRead();
    return super.gestor;
  }

  @override
  set gestor(bool value) {
    _$gestorAtom.reportWrite(value, super.gestor, () {
      super.gestor = value;
    });
  }

  final _$instituicaoAtom =
      Atom(name: '_UserProfileControllerBase.instituicao');

  @override
  String get instituicao {
    _$instituicaoAtom.reportRead();
    return super.instituicao;
  }

  @override
  set instituicao(String value) {
    _$instituicaoAtom.reportWrite(value, super.instituicao, () {
      super.instituicao = value;
    });
  }

  final _$titleAtom = Atom(name: '_UserProfileControllerBase.title');

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

  final _$cardAtom = Atom(name: '_UserProfileControllerBase.card');

  @override
  bool get card {
    _$cardAtom.reportRead();
    return super.card;
  }

  @override
  set card(bool value) {
    _$cardAtom.reportWrite(value, super.card, () {
      super.card = value;
    });
  }

  final _$profilesAtom = Atom(name: '_UserProfileControllerBase.profiles');

  @override
  List<ProfileModel> get profiles {
    _$profilesAtom.reportRead();
    return super.profiles;
  }

  @override
  set profiles(List<ProfileModel> value) {
    _$profilesAtom.reportWrite(value, super.profiles, () {
      super.profiles = value;
    });
  }

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

  final _$deletFormacaoAsyncAction =
      AsyncAction('_UserProfileControllerBase.deletFormacao');

  @override
  Future<dynamic> deletFormacao(dynamic id) {
    return _$deletFormacaoAsyncAction.run(() => super.deletFormacao(id));
  }

  final _$getProfileAsyncAction =
      AsyncAction('_UserProfileControllerBase.getProfile');

  @override
  Future<dynamic> getProfile() {
    return _$getProfileAsyncAction.run(() => super.getProfile());
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
name: ${name},
email: ${email},
crp: ${crp},
gestor: ${gestor},
instituicao: ${instituicao},
title: ${title},
card: ${card},
profiles: ${profiles},
formacao: ${formacao}
    ''';
  }
}
