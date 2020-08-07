import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        leading: IconButton(icon: Icon(Icons.menu),color: Colors.blueAccent,onPressed: (){
          print("It was pressed");
        },),
      ),
      body: Column(
        children: <Widget>[
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: (){
          Navigator.pushNamed(context, "/Login");
        },
      ),
    );
  }
}
