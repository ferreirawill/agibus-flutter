import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final onPressed;
  final title;
  final minWidith;
  final height;

  const GreenButton({Key key, this.onPressed, this.title, this.minWidith, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: minWidith,
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(30.0)),
        ),
        elevation: 5.0,
        color: Color(0xFF86f573),
        disabledColor: Color(0xFF73e15f),
        textColor: Colors.white,

        child: Text(title,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
        onPressed: onPressed,
      ),
    );
  }
}
