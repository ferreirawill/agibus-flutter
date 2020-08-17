import 'package:agibus_mobile/app/global_widgets/custom_icon_button.dart';
import 'package:agibus_mobile/app/global_widgets/green_button.dart';
import 'package:agibus_mobile/app/global_widgets/underline_input_field.dart';
import 'package:agibus_mobile/app/repositories/enroll_repositories.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'enroll_controller.dart';

class EnrollLoginPage extends StatefulWidget {
  final String title;
  const EnrollLoginPage({Key key, this.title = "Enroll"}) : super(key: key);

  @override
  _EnrollLoginPageState createState() => _EnrollLoginPageState();
}

class _EnrollLoginPageState extends ModularState<EnrollLoginPage, EnrollController> {
  //use 'controller' variable to access controller

  final EnrollRepository _enrollRepository = EnrollRepository();

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
            top: 180,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Cadastre-se ",
                      style: TextStyle(fontSize: 28, color: Color(0xFF18b4e8)),
                    ),
                    Text(
                      "grátis!",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF18b4e8),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: LoginButton(
                    text: "Usar minha conta do Facebook",
                    color: Color(0xFF4267B2),
                    onPressed: (){
                      _enrollRepository.createUsingFacebook();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: LoginButton(
                    text: "Usar minha conta do Google",
                    color: Color(0xFFdb4a39),
                    onPressed: (){},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: 375,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "Email",
                        obscure: false,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setEnrolledEmail,
                        controller: controller.validateEmail,
                        errorText: "Digite um email válido",
                        colors: Color(0xFF18b4e8),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: 375,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "Senha",
                        obscure: controller.passwordVisibility,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setEnrolledPassword,
                        controller: controller.validatePassword,
                        errorText: "Senha deve conter pelo menos 8 dígitos",
                        colors: Color(0xFF18b4e8),
                        suffix: CustomIconButton(
                          iconData: Icon(Icons.visibility,color:  Color(0xFF18b4e8),),
                          radius: 32,
                          onTap: (){
                            controller.setPasswordVisibility();
                          },
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: 375,
                    child: Observer(builder: (context){
                      return UnderlineInputField(
                        hint: "Confirmar Senha",
                        obscure: controller.passwordVisibility,
                        keyboard: TextInputType.emailAddress,
                        onChanged: controller.setConfirmedPassword,
                        controller: controller.validateConfirmedPassword,
                        errorText: "As senhas digitadas não são compatíveis",
                        colors: Color(0xFF18b4e8),
                        suffix: CustomIconButton(
                        iconData: Icon(Icons.visibility,color:  Color(0xFF18b4e8),),
                        radius: 32,
                        onTap: (){
                          controller.setPasswordVisibility();
                        },
                      ),
                      );
                    })
                  ),
                ),
                Observer(builder: (context){
                  return GreenButton(
                    minWidith: 200.0,
                    height: 50.0,
                    title: "Avançar",
                    onPressed: controller.isLoginFieldsValid ? (){
                      print("Gesture detector");
                      Navigator.pushNamed(context, "/Enroll/EnrollData");
                    } : null,
                  );
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final Color color;
  final onPressed;

  const LoginButton({Key key, @required this.text, @required this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 350.0,
      height: 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        elevation: 5.0,
        color: color,
        textColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        onPressed: onPressed,
      ),
    );
  }

}
