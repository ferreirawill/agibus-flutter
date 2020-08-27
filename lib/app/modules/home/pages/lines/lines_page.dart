import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'lines_controller.dart';

class LinesPage extends StatefulWidget {
  final String title;
  const LinesPage({Key key, this.title = "Lines"}) : super(key: key);

  @override
  _LinesPageState createState() => _LinesPageState();
}

class _LinesPageState extends ModularState<LinesPage, LinesController> {
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
