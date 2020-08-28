import 'lines_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'lines_page.dart';

class LinesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LinesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LinesPage()),
      ];

  static Inject get to => Inject<LinesModule>.of();
}
