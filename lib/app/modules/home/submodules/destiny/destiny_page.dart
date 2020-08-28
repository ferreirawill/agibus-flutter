import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'destiny_controller.dart';

class DestinyPage extends StatefulWidget {
  final String title;
  const DestinyPage({Key key, this.title = "Destiny"}) : super(key: key);

  @override
  _DestinyPageState createState() => _DestinyPageState();
}

class _DestinyPageState extends ModularState<DestinyPage, DestinyController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 30),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32), bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: InputField(
                  hint: "Vai pra onde?",
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 242, 238, 1),
                boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Favoritos",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(118, 113, 113, 1)),
                  ),
                ),
                FlatButton(
                  child: Text("Adicionar",style: TextStyle(fontSize: 22,color: Color.fromRGBO(29, 196, 255, 1),fontWeight: FontWeight.bold),),
                  onPressed: (){
                    print("Adicionando favoritos");
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100,bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 242, 238, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Viagens recentes",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(118, 113, 113, 1)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String hint;
  final keyboard;
  final onChanged;

  InputField({Key key, @required this.hint, this.keyboard, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboard,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(240, 240, 240, 1.0),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all((Radius.circular(32.0))),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all((Radius.circular(32.0))),
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all((Radius.circular(32.0))),
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }
}
