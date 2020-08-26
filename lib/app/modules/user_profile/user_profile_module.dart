import 'add_formacao/add_formacao_controller.dart';
import 'form_card/form_card_controller.dart';
import 'user_profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'user_profile_page.dart';

class UserProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddFormacaoController()),
        Bind((i) => FormCardController()),
        Bind((i) => UserProfileController(Modular.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => UserProfilePage()),
      ];

  static Inject get to => Inject<UserProfileModule>.of();
}
