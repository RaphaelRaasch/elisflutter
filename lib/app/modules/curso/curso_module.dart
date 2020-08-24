import 'package:elis/app/modules/curso/list_curso/list_curso_page.dart';

import 'list_curso/list_curso_controller.dart';
import 'curso_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'curso_page.dart';

class CursoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ListCursoController()),
        Bind((i) => CursoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ListCursoPage()),
        Router('/addcurso', child: (_, args) => CursoPage()),
      ];

  static Inject get to => Inject<CursoModule>.of();
}
