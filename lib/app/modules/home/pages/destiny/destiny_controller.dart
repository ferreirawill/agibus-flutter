import 'package:mobx/mobx.dart';

part 'destiny_controller.g.dart';

class DestinyController = _DestinyControllerBase with _$DestinyController;

abstract class _DestinyControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
