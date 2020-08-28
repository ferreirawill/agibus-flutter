import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:agibus_mobile/app/modules/home/submodules/destiny/destiny_controller.dart';
import 'package:agibus_mobile/app/modules/home/submodules/destiny/destiny_module.dart';

void main() {
  initModule(DestinyModule());
  // DestinyController destiny;
  //
  setUp(() {
    //     destiny = DestinyModule.to.get<DestinyController>();
  });

  group('DestinyController Test', () {
    //   test("First Test", () {
    //     expect(destiny, isInstanceOf<DestinyController>());
    //   });

    //   test("Set Value", () {
    //     expect(destiny.value, equals(0));
    //     destiny.increment();
    //     expect(destiny.value, equals(1));
    //   });
  });
}
