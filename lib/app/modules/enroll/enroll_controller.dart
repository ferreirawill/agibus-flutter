import 'package:agibus_mobile/app/utils/cpf_validator.dart';
import 'package:mobx/mobx.dart';

part 'enroll_controller.g.dart';

class EnrollController = _EnrollControllerBase with _$EnrollController;

abstract class _EnrollControllerBase with Store {

  _EnrollControllerBase(){
    autorun((_){
      CPFValidator.isValid(enrolledCPF) ? print("CPF valido") : print("CPF NAO valido");

      validateEmail ? print("Email valido") : print("Email NAO valido");
      validatePassword ? print("Password valido") : print("Password NAO valido");
      validateConfirmedPassword ? print("ConfirmedPassword valido") : print("ConfirmedPassword NAO valido");
      isLoginFieldsValid ? print("Login field valido") : print("Login field NAO valido");
    });
  }

  @observable
  String enrolledEmail = "";

  @observable
  String enrolledPassword = "";

  @observable
  String confirmedPassword = "";

  @observable
  String enrolledName = "";

  @observable
  String enrolledLastName = "";

  @observable
  String enrolledCPF = "";

  @observable
  bool passwordVisibility = true;

  @action
  void setPasswordVisibility() => passwordVisibility = !passwordVisibility;

  @action
  void setEnrolledEmail(String value) => enrolledEmail = value;

  @action
  void setEnrolledPassword(String value) => enrolledPassword = value;

  @action
  void setConfirmedPassword(String value) => confirmedPassword = value;

  @action
  void setEnrolledName(String value) => enrolledName = value;

  @action
  void setEnrolledLastName(String value) => enrolledLastName = value;

  @action
  void setEnrolledCPF(String value) => enrolledCPF = value;


  @computed
  bool get validateEmail => (RegExp( r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(enrolledEmail) && enrolledEmail.length > 5) || enrolledEmail.length <=0;

  @computed
  bool get validatePassword => enrolledPassword.length >= 8  || enrolledPassword.length <=0;

  @computed
  bool get validateConfirmedPassword => (enrolledPassword == confirmedPassword?  true: false);

  @computed
  bool get validateCPF => CPFValidator.isValid(enrolledCPF) || enrolledCPF.length <= 0;

  @computed
  bool get validateName => enrolledName.length > 25 && enrolledName.length < 2 ? false : true;

  @computed
  bool get validateLastName => enrolledName.length > 25 && enrolledName.length < 2 ? false : true;

  @computed
  bool get isDataFieldsValid => validateCPF && validateLastName && validateName;

  @computed
  bool get isLoginFieldsValid => (validateEmail && validatePassword) && validateConfirmedPassword;

}
