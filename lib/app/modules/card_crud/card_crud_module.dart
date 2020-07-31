import 'package:agibus_mobile/app/modules/card_crud/card_crud_page.dart';
import 'card_crud_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardCrudModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardCrudController()),
      ];

  @override
  List<Router> get routers => [
    Router("/CardCrud", child: (_, args) => CardCrudPage()),
  ];

  static Inject get to => Inject<CardCrudModule>.of();
}
