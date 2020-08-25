import 'package:agibus_mobile/app/modules/login/login_controller.dart';
import 'package:agibus_mobile/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  initModule(LoginModule());
  LoginController loginModule;
  //
  setUp(() {
    loginModule = LoginModule.to.get<LoginController>();
  });

  group('Login Controller Test', () {
    test("Login Observables", () {

      expect(loginModule.password, "");
      expect(loginModule.email, "");

      loginModule.setEmail("ferreirawill94@gmail.com");
      loginModule.setPassword("123456789");

      expect(loginModule.email, "ferreirawill94@gmail.com");
      expect(loginModule.password, "123456789");

    });

    test("Verify validators", () {
      expect(loginModule.isFormValid, false);

      loginModule.setEmail("ferreirawill94@gmail.com");
      loginModule.setPassword("123456789");

      expect(loginModule.validateEmail, true);
      expect(loginModule.validatePassword, true);
      expect(loginModule.isFormValid, true);
    });

    test("Verify password visibility tool", () {
      expect(loginModule.passwordVisibility, true);

      loginModule.setPasswordVisibility();

      expect(loginModule.passwordVisibility, false);

    });

  });
}
