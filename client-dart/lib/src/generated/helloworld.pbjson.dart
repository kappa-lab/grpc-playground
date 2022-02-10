///
//  Generated code. Do not modify.
//  source: helloworld.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode('CgpIZWxsb1JlcGx5EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use goodbyRequestDescriptor instead')
const GoodbyRequest$json = const {
  '1': 'GoodbyRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'age', '3': 2, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `GoodbyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodbyRequestDescriptor = $convert.base64Decode('Cg1Hb29kYnlSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEAoDYWdlGAIgASgFUgNhZ2U=');
@$core.Deprecated('Use goodbyReplyDescriptor instead')
const GoodbyReply$json = const {
  '1': 'GoodbyReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `GoodbyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodbyReplyDescriptor = $convert.base64Decode('CgtHb29kYnlSZXBseRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
const $core.Map<$core.String, $core.dynamic> GreeterServiceBase$json = const {
  '1': 'Greeter',
  '2': const [
    const {'1': 'SayHello', '2': '.helloworld.HelloRequest', '3': '.helloworld.HelloReply', '4': const {}},
    const {'1': 'SayGoodby', '2': '.helloworld.GoodbyRequest', '3': '.helloworld.GoodbyReply', '4': const {}},
  ],
};

@$core.Deprecated('Use greeterServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> GreeterServiceBase$messageJson = const {
  '.helloworld.HelloRequest': HelloRequest$json,
  '.helloworld.HelloReply': HelloReply$json,
  '.helloworld.GoodbyRequest': GoodbyRequest$json,
  '.helloworld.GoodbyReply': GoodbyReply$json,
};

/// Descriptor for `Greeter`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List greeterServiceDescriptor = $convert.base64Decode('CgdHcmVldGVyEj4KCFNheUhlbGxvEhguaGVsbG93b3JsZC5IZWxsb1JlcXVlc3QaFi5oZWxsb3dvcmxkLkhlbGxvUmVwbHkiABJBCglTYXlHb29kYnkSGS5oZWxsb3dvcmxkLkdvb2RieVJlcXVlc3QaFy5oZWxsb3dvcmxkLkdvb2RieVJlcGx5IgA=');
