///
//  Generated code. Do not modify.
//  source: proto/cards.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cards.pb.dart' as $0;
export 'cards.pb.dart';

class CardsServiceClient extends $grpc.Client {
  static final _$createCard =
      $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
          '/cards.CardsService/CreateCard',
          ($0.CreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$getAllCards =
      $grpc.ClientMethod<$0.GetAllRequest, $0.GetAllResponse>(
          '/cards.CardsService/GetAllCards',
          ($0.GetAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetAllResponse.fromBuffer(value));

  CardsServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CreateResponse> createCard($0.CreateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createCard, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetAllResponse> getAllCards($0.GetAllRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAllCards, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CardsServiceBase extends $grpc.Service {
  $core.String get $name => 'cards.CardsService';

  CardsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'CreateCard',
        createCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllRequest, $0.GetAllResponse>(
        'GetAllCards',
        getAllCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAllRequest.fromBuffer(value),
        ($0.GetAllResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateResponse> createCard_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return createCard(call, await request);
  }

  $async.Future<$0.GetAllResponse> getAllCards_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetAllRequest> request) async {
    return getAllCards(call, await request);
  }

  $async.Future<$0.CreateResponse> createCard(
      $grpc.ServiceCall call, $0.CreateRequest request);
  $async.Future<$0.GetAllResponse> getAllCards(
      $grpc.ServiceCall call, $0.GetAllRequest request);
}
