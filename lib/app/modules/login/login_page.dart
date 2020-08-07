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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF18b4e8),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
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
                      return InputField(
                        hint: " E-mail",
                        obscure: false,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setEmail,
                        controller: controller.validateEmail,
                        errorText: "Insira um e-mail válido",
                      );
                    },),
                    SizedBox(width: 75, height: 15,),
                    Observer(builder: (_){
                      return InputField(
                        hint: "Senha",
                        obscure: true,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setPassword,
                        controller: controller.validatePassword,
                        errorText: "Senha deve conter pelo menos 8 dígitos",
                      );
                    }),
                    SizedBox(width: 75, height: 30,),
                    Observer(
                        builder: (_){
                          return ButtonTheme(
                            minWidth: 200.0,
                            height: 50.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                              ),
                              elevation: 5.0,
                              color: Color(0xFF86f573),
                              disabledColor: Color(0xFF73e15f),
                              textColor: Colors.white,

                              child: Text("Entrar",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                              onPressed: controller.isFormValid ?(){
                                print("Is valid");
                                //Navigator.pushNamed(context, "/Home");
                              }: null,
                            ),
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
          ],
        ),
      ),
    );
  }
}


class InputField extends StatelessWidget {
  final String hint;
  final String errorText;
  final bool obscure;
  final controller;
  final keyboard;
  final onChanged;

  InputField(
      {Key key,
        @required this.hint,
        @required this.obscure,
        @required this.controller,
        this.keyboard,
        @required this.onChanged,
        @required this.errorText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: keyboard,
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        /*errorText: controller ?  null : errorText,
        errorBorder: controller
            ? UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0))
            :
            UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0)),*/

        filled: false,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }
}
