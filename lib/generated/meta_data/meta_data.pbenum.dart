///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MetaData extends $pb.ProtobufEnum {
  static const MetaData DEFAULT = MetaData._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const MetaData TITLE = MetaData._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TITLE');
  static const MetaData TEXT = MetaData._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');
  static const MetaData TIME = MetaData._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIME');
  static const MetaData MESSAGE = MetaData._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESSAGE');
  static const MetaData PATH = MetaData._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PATH');
  static const MetaData IMAGE = MetaData._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IMAGE');
  static const MetaData SINGLE_TEXT = MetaData._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SINGLE_TEXT');
  static const MetaData PASS_WORD = MetaData._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASS_WORD');

  static const $core.List<MetaData> values = <MetaData> [
    DEFAULT,
    TITLE,
    TEXT,
    TIME,
    MESSAGE,
    PATH,
    IMAGE,
    SINGLE_TEXT,
    PASS_WORD,
  ];

  static final $core.Map<$core.int, MetaData> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaData? valueOf($core.int value) => _byValue[value];

  const MetaData._($core.int v, $core.String n) : super(v, n);
}

