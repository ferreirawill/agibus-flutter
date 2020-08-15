import 'package:agibus_mobile/app/global_widgets/green_button.dart';
import 'package:agibus_mobile/app/global_widgets/underline_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'enroll_controller.dart';


class EnrollDataPage extends StatefulWidget {
  final String title;
  EnrollDataPage({Key key, this.title = "EnrollData"}) : super(key: key);



  @override
  _EnrollDataPageState createState() => _EnrollDataPageState();
}

class _EnrollDataPageState extends ModularState<EnrollDataPage, EnrollController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFf1f2ee),
      body: Stack(
        children: [
          Positioned(
            top: 45,
            left: 5,
            child: Container(
                height: 100,
                width: 100,
                child: Image.asset("images/logo_agibus_invertida_escrito.png")),
          ),
          Positioned(
            top: 215,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Column(
                    children: [
                      Text(
                        "Para sua segurança,                ",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF18b4e8),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "precisamos de algumas informações para validar seu cadastro",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF18b4e8),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "Nome",
                        obscure: false,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setEnrolledName,
                        controller: controller.validateName,
                        errorText: "Nome deve ter menos de 25 dígitos",
                        colors: Color(0xFF18b4e8),
                      );
                    })
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "Sobrenome",
                        obscure: false,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setEnrolledLastName,
                        controller: controller.validateLastName,
                        errorText: "Sobrenome deve ter menos de 25 dígitos",
                        colors: Color(0xFF18b4e8),
                      );
                    })
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "CPF",
                        obscure: false,
                        keyboard: TextInputType.phone,
                        onChanged: controller.setEnrolledCPF,
                        controller: controller.validateCPF,
                        errorText: "CPF inválido",
                        colors: Color(0xFF18b4e8),
                      );
                    })
                  ),
                ),
                GreenButton(
                  minWidith: 200.0,
                  height: 50.0,
                  title: "Finalizar",
                  onPressed: controller.isDataFieldsValid ? (){

                  } : null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
