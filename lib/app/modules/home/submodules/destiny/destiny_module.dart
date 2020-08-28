import 'package:flutter_modular/flutter_modular.dart';
import 'destiny_controller.dart';
import 'destiny_page.dart';

class DestinyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DestinyController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DestinyPage()),
      ];

  static Inject get to => Inject<DestinyModule>.of();
}
