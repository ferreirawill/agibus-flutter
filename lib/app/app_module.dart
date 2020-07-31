import 'package:agibus_mobile/app/modules/card_crud/card_crud_module.dart';
import 'package:agibus_mobile/app/modules/card_crud/card_crud_page.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:agibus_mobile/app/app_widget.dart';
import 'package:agibus_mobile/app/modules/home/home_module.dart';

import 'modules/card_crud/card_crud_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeModule()),
        Bind((i) => CardCrudController()),
  ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/CardCrud", module: CardCrudModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
