import 'dart:ui';

import 'package:agibus_mobile/app/global_widgets/green_button.dart';
import 'package:agibus_mobile/app/modules/home/pages/destiny/destiny_page.dart';
import 'package:agibus_mobile/app/modules/home/pages/lines/lines_page.dart';
import 'package:agibus_mobile/app/modules/home/pages/stations/stations_page.dart';
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

  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f2ee),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20)),
                    child: Image(image:AssetImage( "images/sabara_postalcard.jpg"),
                  height: MediaQuery.of(context).size.height*0.4,
                  color: Colors.black38,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fitHeight,
                ),
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
                Positioned(
                  top: MediaQuery.of(context).size.height*0.25,
                  right: MediaQuery.of(context).size.height*0.01,
                  child: ButtonTheme(
                    minWidth: 100.0,
                    height: 45.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.0)),
                      ),
                      elevation: 5.0,
                      color: Color(0xFF86f573),
                      textColor: Colors.white,

                      child: Row(children: [
                        Icon(Icons.shopping_cart),
                        Text("Carregar saldo",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ],),
                      onPressed: (){

                      },
                    ),
                  )
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.53,
              width:  MediaQuery.of(context).size.width,
              color: Colors.red,
              child: PageView(
                controller: pageViewController,
                children: [
                  DestinyPage(),
                  StationsPage(),
                  LinesPage(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController?.page?.round() ?? 0,
              backgroundColor: Color(0xFFf1f2ee),
              elevation: 10,
              onTap: (index){
                pageViewController.jumpToPage(index);
              },
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
            );
          }
      ),
    );
  }
}


/*
* PageView(
              controller: pageViewController,
              children: [
              ],
            ),
* */