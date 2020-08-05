///
//  Generated code. Do not modify.
//  source: proto/cards.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CreateRequest$json = const {
  '1': 'CreateRequest',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 9, '10': 'number'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const CreateResponse$json = const {
  '1': 'CreateResponse',
  '2': const [
    const {'1': 'createdCard', '3': 1, '4': 1, '5': 11, '6': '.cards.Card', '10': 'createdCard'},
  ],
};

const GetAllRequest$json = const {
  '1': 'GetAllRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const GetAllResponse$json = const {
  '1': 'GetAllResponse',
  '2': const [
    const {'1': 'cards', '3': 1, '4': 3, '5': 11, '6': '.cards.Card', '10': 'cards'},
  ],
};

const Card$json = const {
  '1': 'Card',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'number', '3': 2, '4': 1, '5': 9, '10': 'number'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
  ],
};

