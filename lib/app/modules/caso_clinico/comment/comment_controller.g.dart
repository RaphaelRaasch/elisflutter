// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CommentController on _CommentControllerBase, Store {
  final _$commentAtom = Atom(name: '_CommentControllerBase.comment');

  @override
  String get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  final _$idAtom = Atom(name: '_CommentControllerBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$commentsAtom = Atom(name: '_CommentControllerBase.comments');

  @override
  List<CommentModel> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(List<CommentModel> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  final _$getCommentsAsyncAction =
      AsyncAction('_CommentControllerBase.getComments');

  @override
  Future<dynamic> getComments() {
    return _$getCommentsAsyncAction.run(() => super.getComments());
  }

  final _$addcommentAsyncAction =
      AsyncAction('_CommentControllerBase.addcomment');

  @override
  Future<dynamic> addcomment() {
    return _$addcommentAsyncAction.run(() => super.addcomment());
  }

  @override
  String toString() {
    return '''
comment: ${comment},
id: ${id},
comments: ${comments}
    ''';
  }
}
