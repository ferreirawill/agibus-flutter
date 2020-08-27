import 'package:mobx/mobx.dart';

part 'lines_controller.g.dart';

class LinesController = _LinesControllerBase with _$LinesController;

abstract class _LinesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
