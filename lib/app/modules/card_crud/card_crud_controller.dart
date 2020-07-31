import 'package:mobx/mobx.dart';

part 'card_crud_controller.g.dart';

class CardCrudController = _CardCrudControllerBase with _$CardCrudController;

abstract class _CardCrudControllerBase with Store {
  @observable
  String cardNumber = "";

  @observable
  String cardNickname = "";

  @observable
  int userId = -1;

  @action
  changeCardNumber(String value) => cardNumber = value;

  @action
  changeCardNickname(String value) => cardNickname = value;

  @action
  changeUserId(String value) => userId = int.parse(value);


}
