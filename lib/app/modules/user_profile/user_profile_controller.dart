import 'package:mobx/mobx.dart';

part 'user_profile_controller.g.dart';

class UserProfileController = _UserProfileControllerBase
    with _$UserProfileController;

abstract class _UserProfileControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
