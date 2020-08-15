/*

Verificar para o ssl
https://grpc.io/docs/guides/auth/
* */
import 'package:agibus_mobile/app/utils/cards_protos/cards.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class CardRepository{

  static ClientChannel channel = ClientChannel('localhost',port: 5100,options: ChannelOptions(credentials: ChannelCredentials.insecure()));
  final _client = CardsServiceClient(channel);

  createCard(Card _card){
    var response = _client.createCard(CreateRequest()
      ..userId = _card.userId
      ..number = _card.number);

    print("Response message: $response");
  }

  getAll(Card _card){
    var response = _client.getAllCards(GetAllRequest()
      ..userId = _card.userId);

    print("Response message: $response");

  }

}