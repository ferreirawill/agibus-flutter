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

  @observable
  bool passwordVisibility = true;

  @action
  void setPasswordVisibility() => passwordVisibility = !passwordVisibility;


  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;


  @computed
  bool get validateEmail => (RegExp( r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email) && email.length > 5) || email.length <= 0;

  @computed
  bool get validatePassword => password.length >= 8 || password.length <= 0;

  @computed
  bool get isFormValid => (validatePassword && validatePassword) && (password.length > 0) && (email.length > 0);


}
