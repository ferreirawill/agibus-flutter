import 'package:agibus_mobile/app/app_module.dart';
import 'package:agibus_mobile/app/modules/card_crud/card_crud_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:agibus_mobile/app/modules/card_crud/card_crud_page.dart';

void main() {

  initModule(AppModule());
  initModule(CardCrudModule());

  
group("Encontrando os Widgets", (){

  testWidgets('Find Card Fields', (tester) async {
    await tester.pumpWidget(buildTestableWidget(CardCrudPage()));
    final nickFinder = find.text("Apelido do cartão");
    final numberFinder = find.text("Número do cartão");
    final userIdFinder = find.text("Id do usuário");

    expect(nickFinder, findsOneWidget);
    expect(numberFinder, findsOneWidget);
    expect(userIdFinder, findsOneWidget);

  });

  testWidgets("Find button", (tester)async{
    await tester.pumpWidget(buildTestableWidget(CardCrudPage()));

    final buttonFinder = find.byIcon(Icons.send);

    expect(buttonFinder, findsOneWidget);
  });
});


  group("Executando os Widgets", (){

    testWidgets('Execute Card Fields', (tester) async {
      await tester.pumpWidget(buildTestableWidget(CardCrudPage()));
      final nickFinder = find.text("Apelido do cartão");
      final numberFinder = find.text("Número do cartão");
      final userIdFinder = find.text("Id do usuário");

      expect(nickFinder, findsOneWidget);
      expect(numberFinder, findsOneWidget);
      expect(userIdFinder, findsOneWidget);

      /** WILL FAIL -- NEED TO DO CONSISTENCE IN CONTROLLER -- KEYBOARD TYPE DOESN'T BLOCK
      await tester.enterText(find.byKey(Key("NickTextField")), "OBAMA CARE");
      await tester.enterText(find.byKey(Key("NumberTextField")), "OBAMA CARE");
      await tester.enterText(find.byKey(Key("UserIdTextField")), "OBAMA CARE");
       */

      await tester.enterText(find.byKey(Key("NickTextField")), "OBAMA CARE");
      await tester.enterText(find.byKey(Key("NumberTextField")), "2345678");
      await tester.enterText(find.byKey(Key("UserIdTextField")), "12");

      await tester.pump();

      await tester.tap(find.byKey(Key("SendButton")));

      await tester.pump();

      final checkNickFinder = find.text("Apelido: OBAMA CARE");
      final checkNumberFinder = find.text("Número: 2345678");
      final checkUserIDFinder = find.text("UserID: 12");
      expect(checkNickFinder, findsOneWidget);
      expect(checkNumberFinder, findsOneWidget);
      expect(checkUserIDFinder, findsOneWidget);

    });

    testWidgets("Find button", (tester)async{
      await tester.pumpWidget(buildTestableWidget(CardCrudPage()));

      final buttonFinder = find.byIcon(Icons.send);

      expect(buttonFinder, findsOneWidget);
    });
  });

}
