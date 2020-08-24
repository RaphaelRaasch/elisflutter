import 'package:elis/app/modules/model/curse_model.dart';
import 'package:mobx/mobx.dart';

part 'curse_store.g.dart';

class CurseStore = _CurseStoreBase with _$CurseStore;

abstract class _CurseStoreBase with Store {
  @observable
  List<CurseModel> curse;

  @action
  void setCurse(List<CurseModel> v) {
    curse = v;
  }
}
