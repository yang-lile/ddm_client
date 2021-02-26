///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use metaDataDescriptor instead')
const MetaData$json = const {
  '1': 'MetaData',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'TITLE', '2': 1},
    const {'1': 'TEXT', '2': 2},
    const {'1': 'TIME', '2': 3},
    const {'1': 'MESSAGE', '2': 4},
    const {'1': 'PATH', '2': 5},
    const {'1': 'IMAGE', '2': 6},
    const {'1': 'SINGLE_TEXT', '2': 7},
    const {'1': 'PASS_WORD', '2': 8},
  ],
};

/// Descriptor for `MetaData`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List metaDataDescriptor = $convert.base64Decode('CghNZXRhRGF0YRILCgdERUZBVUxUEAASCQoFVElUTEUQARIICgRURVhUEAISCAoEVElNRRADEgsKB01FU1NBR0UQBBIICgRQQVRIEAUSCQoFSU1BR0UQBhIPCgtTSU5HTEVfVEVYVBAHEg0KCVBBU1NfV09SRBAI');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use rulerIdDescriptor instead')
const RulerId$json = const {
  '1': 'RulerId',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'ruleName', '3': 2, '4': 1, '5': 9, '10': 'ruleName'},
  ],
};

/// Descriptor for `RulerId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulerIdDescriptor = $convert.base64Decode('CgdSdWxlcklkEhYKBnNvdXJjZRgBIAEoCVIGc291cmNlEhoKCHJ1bGVOYW1lGAIgASgJUghydWxlTmFtZQ==');
@$core.Deprecated('Use rulerDescriptor instead')
const Ruler$json = const {
  '1': 'Ruler',
  '2': const [
    const {'1': 'rulerId', '3': 1, '4': 1, '5': 11, '6': '.rulers.RulerId', '10': 'rulerId'},
    const {'1': 'instruction', '3': 2, '4': 1, '5': 9, '10': 'instruction'},
    const {'1': 'scenesUsed', '3': 3, '4': 3, '5': 9, '10': 'scenesUsed'},
    const {'1': 'metaData', '3': 4, '4': 3, '5': 14, '6': '.rulers.MetaData', '10': 'metaData'},
  ],
};

/// Descriptor for `Ruler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulerDescriptor = $convert.base64Decode('CgVSdWxlchIpCgdydWxlcklkGAEgASgLMg8ucnVsZXJzLlJ1bGVySWRSB3J1bGVySWQSIAoLaW5zdHJ1Y3Rpb24YAiABKAlSC2luc3RydWN0aW9uEh4KCnNjZW5lc1VzZWQYAyADKAlSCnNjZW5lc1VzZWQSLAoIbWV0YURhdGEYBCADKA4yEC5ydWxlcnMuTWV0YURhdGFSCG1ldGFEYXRh');
@$core.Deprecated('Use starsDescriptor instead')
const Stars$json = const {
  '1': 'Stars',
  '2': const [
    const {'1': 'starNumber', '3': 1, '4': 1, '5': 5, '10': 'starNumber'},
  ],
};

/// Descriptor for `Stars`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List starsDescriptor = $convert.base64Decode('CgVTdGFycxIeCgpzdGFyTnVtYmVyGAEgASgFUgpzdGFyTnVtYmVy');
@$core.Deprecated('Use pathDataDescriptor instead')
const PathData$json = const {
  '1': 'PathData',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `PathData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pathDataDescriptor = $convert.base64Decode('CghQYXRoRGF0YRISCgRwYXRoGAEgASgJUgRwYXRo');
@$core.Deprecated('Use versionDescriptor instead')
const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
  ],
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode('CgdWZXJzaW9uEhgKB3ZlcnNpb24YASABKAVSB3ZlcnNpb24=');
@$core.Deprecated('Use needUpdateDescriptor instead')
const NeedUpdate$json = const {
  '1': 'NeedUpdate',
  '2': const [
    const {'1': 'needUpdate', '3': 1, '4': 1, '5': 8, '10': 'needUpdate'},
  ],
};

/// Descriptor for `NeedUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List needUpdateDescriptor = $convert.base64Decode('CgpOZWVkVXBkYXRlEh4KCm5lZWRVcGRhdGUYASABKAhSCm5lZWRVcGRhdGU=');
