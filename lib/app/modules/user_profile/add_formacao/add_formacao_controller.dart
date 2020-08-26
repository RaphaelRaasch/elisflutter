import 'package:mobx/mobx.dart';

part 'add_formacao_controller.g.dart';

class AddFormacaoController = _AddFormacaoControllerBase
    with _$AddFormacaoController;

abstract class _AddFormacaoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
