import 'package:mobx/mobx.dart';
part 'curse_controller.g.dart';

class CurseController = _CurseControllerBase with _$CurseController;

abstract class _CurseControllerBase with Store {
  @observable
  int value = 0;
@observable
  String title = '';

  @observable
  String description = '';
  

  @action
  void increment() {
    value++;
  }
}
