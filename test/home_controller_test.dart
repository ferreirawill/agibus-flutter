import 'package:agibus_mobile/app/app_module.dart';
import 'package:agibus_mobile/app/modules/home/home_controller.dart';
import 'package:agibus_mobile/app/modules/home/home_module.dart';
import 'package:agibus_mobile/app/modules/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';


main(){
  
  initModule(AppModule());
  initModule(HomeModule());

  testWidgets("Test Menu Button", (tester) async{

    await tester.pumpWidget(HomePage(title: "homepage",));

    final Finder iconFinder = find.byIcon(Icons.menu);

    expect(iconFinder, findsOneWidget);

    final Icon icon = tester.widget(iconFinder);

    expect(icon,Icons.menu);

  });

  test("click",(){

  });
}