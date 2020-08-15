import 'package:agibus_mobile/app/global_widgets/custom_icon_button.dart';
import 'package:agibus_mobile/app/global_widgets/green_button.dart';
import 'package:agibus_mobile/app/global_widgets/underline_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF18b4e8),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 45,
            left: 5,
            child: Container(
                height: 100,
                width: 100,
                child: Image.asset("images/logo_agibus_escrito.png")),
          ),
          Positioned(
              top: 200,
              left: 30,
              child: Text("Olá!",style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.bold),)),
          Positioned(
              top: 250,
              left: 30,
              child: Text("Seja bem vindo (a).",style: TextStyle(color: Colors.white,fontSize: 38))),
          Positioned(
            top: 350,
            left: 10,
            child: Container(
              width: 370,
              height: 235,
              child: Column(
                children: <Widget>[
                  Observer(builder: (_){
                    return UnderlineInputField(
                      hint: " E-mail",
                      obscure: false,
                      keyboard: TextInputType.emailAddress,
                      onChanged: controller.setEmail,
                      controller: controller.validateEmail,
                      errorText: "Insira um e-mail válido",
                      colors: Colors.white,
                    );
                  },),
                  SizedBox(width: 75, height: 15,),
                  Observer(builder: (_){
                    return UnderlineInputField(
                      hint: "Senha",
                      obscure: controller.passwordVisibility,
                      keyboard: TextInputType.emailAddress,
                      onChanged: controller.setPassword,
                      controller: controller.validatePassword,
                      errorText: "Senha deve conter no mínimo 8 dígitos",
                      colors: Colors.white,
                      suffix: CustomIconButton(
                        iconData: Icon(Icons.visibility,color:  Colors.white,),
                        radius: 32,
                        onTap: (){
                          controller.setPasswordVisibility();
                        },
                      ),
                    );
                  }),
                  SizedBox(width: 75, height: 30,),
                  Observer(
                      builder: (_){
                        return GreenButton(
                          minWidith: 200.0,
                          height: 50.0,
                          title: "Avançar",
                          onPressed: controller.isFormValid ? (){}:null,
                        );
                      }),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  print("Gesture detector");
                  Navigator.pushNamed(context, "/Enroll");
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Não tem uma conta? ",style:TextStyle(color: Colors.white,fontSize: 21),),
                    Text("Cadastre-se",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
