import "enroll_controller.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'enroll_data_page.dart';
import 'enroll_login_page.dart';

class EnrollModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EnrollController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => EnrollLoginPage()),
        Router("/EnrollData", child: (_, args) => EnrollDataPage()),
      ];

  static Inject get to => Inject<EnrollModule>.of();
}
