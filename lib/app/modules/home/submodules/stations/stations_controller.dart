import 'package:mobx/mobx.dart';

part 'stations_controller.g.dart';

class StationsController = _StationsControllerBase with _$StationsController;

abstract class _StationsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
