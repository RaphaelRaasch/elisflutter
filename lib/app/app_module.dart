import 'package:elis/app/modules/auth/auth_module.dart';
import 'package:elis/app/modules/case/case_module.dart';
import 'package:elis/app/modules/curse/curse_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:elis/app/app_widget.dart';
import 'package:elis/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: AuthModule()),
        Router('/home', module: HomeModule()),
        Router('/case', module: CaseModule()),
        Router('/curse', module: CurseModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
