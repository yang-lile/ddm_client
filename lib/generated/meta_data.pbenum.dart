///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class System extends $pb.ProtobufEnum {
  static const System all = System._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'all');
  static const System android = System._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'android');
  static const System ios = System._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ios');
  static const System windows = System._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'windows');
  static const System linux = System._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'linux');
  static const System mac = System._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'mac');
  static const System fuchsia = System._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'fuchsia');

  static const $core.List<System> values = <System> [
    all,
    android,
    ios,
    windows,
    linux,
    mac,
    fuchsia,
  ];

  static final $core.Map<$core.int, System> _byValue = $pb.ProtobufEnum.initByValue(values);
  static System? valueOf($core.int value) => _byValue[value];

  const System._($core.int v, $core.String n) : super(v, n);
}

