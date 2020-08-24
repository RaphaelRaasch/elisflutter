import 'package:mobx/mobx.dart';

part 'caso_controller.g.dart';

class CasoController = _CasoControllerBase with _$CasoController;

abstract class _CasoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
