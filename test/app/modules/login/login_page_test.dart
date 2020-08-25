import 'package:agibus_mobile/app/app_module.dart';
import 'package:agibus_mobile/app/modules/login/login_controller.dart';
import 'package:agibus_mobile/app/modules/login/login_module.dart';
import 'package:agibus_mobile/app/modules/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';



void main() {

  initModule(AppModule());
  initModule(LoginModule());


  group("Encontrando os Widgets", (){



    testWidgets('Find page', (tester) async {
      await tester.pumpWidget(buildTestableWidget(LoginPage()));

      final pageFinder = find.byKey( Key("loginPageKey"),);
      expect(pageFinder, findsOneWidget);


    });

    testWidgets('Find Credential Fields', (tester) async {
      await tester.pumpWidget(buildTestableWidget(LoginPage()));
      //final emailFinder = find.widgetWithText(UnderlineInputBorder, "Email");
      //final passwordFinder = find.widgetWithText(UnderlineInputBorder, "Senha");
      final passwordFinder = find.byKey( Key("LoginObserverKey"),);
      expect(passwordFinder, findsOneWidget);

      //expect(emailFinder, findsOneWidget);
      //expect(passwordFinder, findsOneWidget);


    });

    testWidgets("Find button", (tester)async{
      await tester.pumpWidget(buildTestableWidget(LoginPage()));

      final buttonFinder = find.text("Avançar");

      expect(buttonFinder, findsOneWidget);
    });
  });


  group("Executando os Widgets", (){

    testWidgets('Execute Card Fields', (tester) async {
      await tester.pumpWidget(buildTestableWidget(LoginPage()));
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
      await tester.pumpWidget(buildTestableWidget(LoginPage()));

      final buttonFinder = find.byIcon(Icons.send);

      expect(buttonFinder, findsOneWidget);
    });
  });

}
