import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_crud_controller.dart';

class CardCrudPage extends StatefulWidget {
  final String title;
  const CardCrudPage({Key key, this.title = "CardCrud"}) : super(key: key);

  @override
  _CardCrudPageState createState() => _CardCrudPageState();
}

class _CardCrudPageState
    extends ModularState<CardCrudPage, CardCrudController> {
  //use 'controller' variable to access controller
  final _textNickController = TextEditingController();
  final _textNumberController = TextEditingController();
  final _textUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Observer(builder: (_) {
            return TextField(
              controller: _textNickController,
              onChanged: (value) {
                controller.changeCardNickname(value);
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Apelido do cartão"), key: Key("NickTextField"),
            );
          }),
          Observer(builder: (_) {
            return TextField(
              controller: _textNumberController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                controller.changeCardNumber(value);
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Número do cartão"),key: Key("NumberTextField"),
            );
          }),
          Observer(builder: (_) {
            return TextField(
              controller: _textUserController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                controller.changeUserId(value);
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "Id do usuário"),key: Key("UserIdTextField"),
            );
          }),
          Observer(builder: (_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Apelido: ${controller.cardNickname}",
                    style: TextStyle(fontSize: 18), key: Key("Nick"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Número: ${controller.cardNumber}",
                    style: TextStyle(fontSize: 18),key: Key("Number"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "UserID: ${controller.userId}",
                    style: TextStyle(fontSize: 18),key: Key("UserId"),
                  ),
                ),
              ],
            );
          }),
          Container(
            color: Colors.red,
            child: IconButton(
              key: Key("SendButton"),
              icon: Icon(Icons.send),
              color: Colors.blueGrey,
              onPressed: () {

                _textNickController.clear();
                _textNumberController.clear();
                _textUserController.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
