import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  _LoginControllerBase(){
    autorun((_){
      print(email);
      print(password);

      print(isFormValid);
    });
  }

  @observable
  String email = "";

  @observable
  String password = "";


  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;


  @computed
  bool get validateEmail => RegExp( r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email) || email.length > 5;

  @computed
  bool get validatePassword => password.length > 8 ;

  @computed
  bool get isFormValid => validatePassword && validatePassword;


}
