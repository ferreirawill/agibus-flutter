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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
