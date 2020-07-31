import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:agibus_mobile/app/modules/card_crud/card_crud_controller.dart';
import 'package:agibus_mobile/app/modules/card_crud/card_crud_module.dart';

void main() {
  initModule(CardCrudModule());
   CardCrudController cardcrud;
  //
  setUp(() {
         cardcrud = CardCrudModule.to.get<CardCrudController>();
  });

  group('CardCrudController Test', () {
       test("Card Number Observable", () {

         expect(cardcrud.cardNumber, "");

         cardcrud.changeCardNumber("852132654");

         expect(cardcrud.cardNumber, "852132654");
      });

       test("Card Nickname Observable", () {

         expect(cardcrud.cardNickname, "");

         cardcrud.changeCardNickname("OBAOBASAMBS");

         expect(cardcrud.cardNickname, "OBAOBASAMBS");
       });

       test("User ID Observable", () {

         expect(cardcrud.userId, -1);

         cardcrud.changeUserId("12");

         expect(cardcrud.userId, 12);
       });
  });
}
