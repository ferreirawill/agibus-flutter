import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'stations_controller.dart';

class StationsPage extends StatefulWidget {
  final String title;
  const StationsPage({Key key, this.title = "Stations"}) : super(key: key);

  @override
  _StationsPageState createState() => _StationsPageState();
}

class _StationsPageState
    extends ModularState<StationsPage, StationsController> {
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
