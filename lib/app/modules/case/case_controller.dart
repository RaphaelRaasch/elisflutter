import 'package:mobx/mobx.dart';

part 'case_controller.g.dart';

class CaseController = _CaseControllerBase with _$CaseController;

abstract class _CaseControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
