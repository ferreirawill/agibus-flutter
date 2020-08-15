import 'package:agibus_mobile/app/modules/card_crud/card_crud_module.dart';
import 'package:agibus_mobile/app/modules/home/home_controller.dart';
import 'package:agibus_mobile/app/modules/login/login_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:agibus_mobile/app/app_widget.dart';
import 'package:agibus_mobile/app/modules/home/home_module.dart';
import 'modules/card_crud/card_crud_controller.dart';
import 'modules/enroll/enroll_controller.dart';
import 'modules/enroll/enroll_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
        Bind((i) => CardCrudController()),
        Bind((i) => EnrollController()),
  ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
        Router("/CardCrud", module: CardCrudModule()),
        Router("/Home", module: HomeModule()),
        Router("/Enroll", module: EnrollModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
