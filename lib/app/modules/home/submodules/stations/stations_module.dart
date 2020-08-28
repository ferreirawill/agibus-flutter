import 'stations_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'stations_page.dart';

class StationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StationsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StationsPage()),
      ];

  static Inject get to => Inject<StationsModule>.of();
}
