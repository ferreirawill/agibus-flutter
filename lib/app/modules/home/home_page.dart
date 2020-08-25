import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:qr_flutter/qr_flutter.dart';
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.menu),color: Colors.white,onPressed: (){
          print("It was pressed");
        },),
        actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: FlatButton(
                child: Text("Sabará,",style: TextStyle(fontSize: 22)
                )
            ,
              textColor:Colors.white,
              onPressed: (){
                  print("Change City");
            },),
          ),
        ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20)),
              child:
          Image(image:AssetImage( "images/sabara_postalcard.jpg"),
            height: MediaQuery.of(context).size.height*0.4,
            color: Colors.black38,
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.fitHeight,
          )

          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.123,
            left: MediaQuery.of(context).size.height*0.11,
            child: Container(
                height: 65,
                width: MediaQuery.of(context).size.height*0.33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(60),bottomRight: Radius.circular(60)),
                  color: Color.fromRGBO(29, 196, 255, 1),
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Cartão virtual",style: TextStyle(color: Colors.white),),
                          Text("984 7882 7894 2020",style: TextStyle(color: Colors.white,fontSize: 18),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Saldo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          Text("500,00",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ),
          Positioned(
          top: MediaQuery.of(context).size.height*0.1,
          left: MediaQuery.of(context).size.height*0.01,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),

              color: Color.fromRGBO(29, 196, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  )
                ]
            ),
            padding: EdgeInsets.all(5),
            child: QrImage(
              version: 1,
              data: "1123123123",
              foregroundColor: Colors.white,
              gapless: false,
            ),

          ),
        ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("Destinos"),
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text("Estações"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            title: Text("Linhas"),
          ),
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
