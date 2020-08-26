import 'package:mobx/mobx.dart';

part 'form_card_controller.g.dart';

class FormCardController = _FormCardControllerBase with _$FormCardController;

abstract class _FormCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
