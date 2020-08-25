import 'package:elis/app/modules/auth/auth_module.dart';
import 'package:elis/app/modules/caso_clinico/caso_clinico_module.dart';
import 'package:elis/app/modules/curso/curso_module.dart';
import 'package:elis/app/modules/user_profile/user_profile_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:elis/app/app_widget.dart';

import 'modules/home/home_module.dart';
import 'modules/profile/profile_module.dart';

import 'modules/store/user_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserStore()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: AuthModule()),
        Router('/home', module: HomeModule()),
        Router('/caso', module: CasoClinicoModule()),
        Router('/curso', module: CursoModule()),
        Router('/profile', module: ProfileModule()),
        Router('/userprofile', module: UserProfileModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
