import 'package:agibus_mobile/app/modules/card_crud/card_crud_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:agibus_mobile/app/app_widget.dart';
import 'package:agibus_mobile/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        //Rota inicial deve ser a home, alterei para facilitar o desenvolvimento
        Router(Modular.initialRoute, module: CardCrudModule()),

      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
