///
//  Generated code. Do not modify.
//  source: proto/cards.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateRequest', package: const $pb.PackageName('cards'), createEmptyInstance: create)
    ..aOS(1, 'number')
    ..aOS(2, 'userId')
    ..hasRequiredFields = false
  ;

  CreateRequest._() : super();
  factory CreateRequest() => create();
  factory CreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateRequest clone() => CreateRequest()..mergeFromMessage(this);
  CreateRequest copyWith(void Function(CreateRequest) updates) => super.copyWith((message) => updates(message as CreateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRequest create() => CreateRequest._();
  CreateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRequest> createRepeated() => $pb.PbList<CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRequest>(create);
  static CreateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get number => $_getSZ(0);
  @$pb.TagNumber(1)
  set number($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class CreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateResponse', package: const $pb.PackageName('cards'), createEmptyInstance: create)
    ..aOM<Card>(1, 'createdCard', protoName: 'createdCard', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  CreateResponse._() : super();
  factory CreateResponse() => create();
  factory CreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateResponse clone() => CreateResponse()..mergeFromMessage(this);
  CreateResponse copyWith(void Function(CreateResponse) updates) => super.copyWith((message) => updates(message as CreateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  CreateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateResponse> createRepeated() => $pb.PbList<CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse _defaultInstance;

  @$pb.TagNumber(1)
  Card get createdCard => $_getN(0);
  @$pb.TagNumber(1)
  set createdCard(Card v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedCard() => clearField(1);
  @$pb.TagNumber(1)
  Card ensureCreatedCard() => $_ensure(0);
}

class GetAllRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAllRequest', package: const $pb.PackageName('cards'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  GetAllRequest._() : super();
  factory GetAllRequest() => create();
  factory GetAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAllRequest clone() => GetAllRequest()..mergeFromMessage(this);
  GetAllRequest copyWith(void Function(GetAllRequest) updates) => super.copyWith((message) => updates(message as GetAllRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllRequest create() => GetAllRequest._();
  GetAllRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllRequest> createRepeated() => $pb.PbList<GetAllRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllRequest>(create);
  static GetAllRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetAllResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAllResponse', package: const $pb.PackageName('cards'), createEmptyInstance: create)
    ..pc<Card>(1, 'cards', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  GetAllResponse._() : super();
  factory GetAllResponse() => create();
  factory GetAllResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAllResponse clone() => GetAllResponse()..mergeFromMessage(this);
  GetAllResponse copyWith(void Function(GetAllResponse) updates) => super.copyWith((message) => updates(message as GetAllResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllResponse create() => GetAllResponse._();
  GetAllResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllResponse> createRepeated() => $pb.PbList<GetAllResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllResponse>(create);
  static GetAllResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Card> get cards => $_getList(0);
}

class Card extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Card', package: const $pb.PackageName('cards'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'number')
    ..aOS(3, 'userId')
    ..hasRequiredFields = false
  ;

  Card._() : super();
  factory Card() => create();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Card clone() => Card()..mergeFromMessage(this);
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

