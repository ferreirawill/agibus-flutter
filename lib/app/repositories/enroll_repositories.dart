//TODO: See this page to know how authenticate using JWT https://grpc.io/docs/guides/auth/
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';

class EnrollRepository{
  final channel = ClientChannel("localhost");
  //TODO: Create Client using user.grcppb

  //static final serviceAccountJson = File("utils/service-account.json").readAsStringSync();
  //final credentials = JwtServiceAccountAuthenticator(serviceAccountJson);
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FacebookLogin facebookLogin = FacebookLogin();

  //TODO: final response =
  //    await client.sayHello(request, options: credentials.toCallOptions);

  createUsingGoogle() async {
    try{
      final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      final AuthResult authResult = await FirebaseAuth.instance.signInWithCredential(credential);

      final FirebaseUser user = authResult.user;
    }
    catch(error){
      print("Ocorreu um erro: ${error}");
    }
  }

  createUsingFacebook() async {
    print("Tentando logar");

    final result = await facebookLogin.logIn(["email"]);
    
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        print("Logado");
        break;
      case FacebookLoginStatus.cancelledByUser:
        print("Cancelado pelo usuário");
        break;
      case FacebookLoginStatus.error:
        print("Cancelado pelo usuário");
        break;
    }
  }


  createUserEmailAndPassword(){

  }
}