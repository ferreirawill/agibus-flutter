//TODO: See this page to know how authenticate using JWT https://grpc.io/docs/guides/auth/
import 'dart:io';
import 'package:grpc/grpc.dart';

class EnrollRepository{
  final channel = ClientChannel("localhost");
  //TODO: Create Client using user.grcppb

  static final serviceAccountJson = File("service-account.json").readAsStringSync();
  final credentials = JwtServiceAccountAuthenticator(serviceAccountJson);

  //TODO: final response =
  //    await client.sayHello(request, options: credentials.toCallOptions);
  createUsingGoogleOrFacebook(){

  }

  createUserEmailAndPassword(){

  }
}