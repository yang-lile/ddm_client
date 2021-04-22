///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'pkey', '3': 4, '4': 1, '5': 11, '6': '.rulers.Pkey', '10': 'pkey'},
    const {'1': 'skey', '3': 5, '4': 1, '5': 11, '6': '.rulers.Skey', '10': 'skey'},
    const {'1': 'dkey', '3': 6, '4': 1, '5': 11, '6': '.rulers.Dkey', '10': 'dkey'},
  ],
};

/// Descriptor for `Ruler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulerDescriptor = $convert.base64Decode('CgVSdWxlchIpCgdydWxlcklkGAEgASgLMg8ucnVsZXJzLlJ1bGVySWRSB3J1bGVySWQSIAoLaW5zdHJ1Y3Rpb24YAiABKAlSC2luc3RydWN0aW9uEh4KCnNjZW5lc1VzZWQYAyADKAlSCnNjZW5lc1VzZWQSIAoEcGtleRgEIAEoCzIMLnJ1bGVycy5Qa2V5UgRwa2V5EiAKBHNrZXkYBSABKAsyDC5ydWxlcnMuU2tleVIEc2tleRIgCgRka2V5GAYgASgLMgwucnVsZXJzLkRrZXlSBGRrZXk=');
@$core.Deprecated('Use baseDataDescriptor instead')
const BaseData$json = const {
  '1': 'BaseData',
  '2': const [
    const {'1': 'alias', '3': 1, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `BaseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseDataDescriptor = $convert.base64Decode('CghCYXNlRGF0YRIUCgVhbGlhcxgBIAEoCVIFYWxpYXMSEgoEdXNlchgCIAEoCVIEdXNlcg==');
@$core.Deprecated('Use rulerDataDescriptor instead')
const RulerData$json = const {
  '1': 'RulerData',
  '2': const [
    const {'1': 'baseData', '3': 1, '4': 1, '5': 11, '6': '.rulers.BaseData', '10': 'baseData'},
    const {'1': 'pkey', '3': 2, '4': 3, '5': 11, '6': '.rulers.Pkey', '10': 'pkey'},
  ],
};

/// Descriptor for `RulerData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulerDataDescriptor = $convert.base64Decode('CglSdWxlckRhdGESLAoIYmFzZURhdGEYASABKAsyEC5ydWxlcnMuQmFzZURhdGFSCGJhc2VEYXRhEiAKBHBrZXkYAiADKAsyDC5ydWxlcnMuUGtleVIEcGtleQ==');
@$core.Deprecated('Use pkeyDescriptor instead')
const Pkey$json = const {
  '1': 'Pkey',
  '2': const [
    const {'1': 'text_form_field_p', '3': 1, '4': 1, '5': 11, '6': '.text_form_field.primary', '9': 0, '10': 'textFormFieldP'},
  ],
  '8': const [
    const {'1': 'primary'},
  ],
};

/// Descriptor for `Pkey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pkeyDescriptor = $convert.base64Decode('CgRQa2V5EkUKEXRleHRfZm9ybV9maWVsZF9wGAEgASgLMhgudGV4dF9mb3JtX2ZpZWxkLnByaW1hcnlIAFIOdGV4dEZvcm1GaWVsZFBCCQoHcHJpbWFyeQ==');
@$core.Deprecated('Use skeyDescriptor instead')
const Skey$json = const {
  '1': 'Skey',
  '2': const [
    const {'1': 'text_form_field_s', '3': 1, '4': 1, '5': 11, '6': '.text_form_field.secondary', '9': 0, '10': 'textFormFieldS'},
  ],
  '8': const [
    const {'1': 'secondary'},
  ],
};

/// Descriptor for `Skey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List skeyDescriptor = $convert.base64Decode('CgRTa2V5EkcKEXRleHRfZm9ybV9maWVsZF9zGAEgASgLMhoudGV4dF9mb3JtX2ZpZWxkLnNlY29uZGFyeUgAUg50ZXh0Rm9ybUZpZWxkU0ILCglzZWNvbmRhcnk=');
@$core.Deprecated('Use dkeyDescriptor instead')
const Dkey$json = const {
  '1': 'Dkey',
  '2': const [
    const {'1': 'text_form_field_d', '3': 1, '4': 1, '5': 11, '6': '.text_form_field.decoration', '9': 0, '10': 'textFormFieldD'},
  ],
  '8': const [
    const {'1': 'decoration'},
  ],
};

/// Descriptor for `Dkey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dkeyDescriptor = $convert.base64Decode('CgREa2V5EkgKEXRleHRfZm9ybV9maWVsZF9kGAEgASgLMhsudGV4dF9mb3JtX2ZpZWxkLmRlY29yYXRpb25IAFIOdGV4dEZvcm1GaWVsZERCDAoKZGVjb3JhdGlvbg==');
@$core.Deprecated('Use starsDescriptor instead')
const Stars$json = const {
  '1': 'Stars',
  '2': const [
    const {'1': 'starNumber', '3': 1, '4': 1, '5': 5, '10': 'starNumber'},
  ],
};

/// Descriptor for `Stars`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List starsDescriptor = $convert.base64Decode('CgVTdGFycxIeCgpzdGFyTnVtYmVyGAEgASgFUgpzdGFyTnVtYmVy');
@$core.Deprecated('Use downloadsDescriptor instead')
const Downloads$json = const {
  '1': 'Downloads',
  '2': const [
    const {'1': 'DownloadNumber', '3': 1, '4': 1, '5': 5, '10': 'DownloadNumber'},
  ],
};

/// Descriptor for `Downloads`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadsDescriptor = $convert.base64Decode('CglEb3dubG9hZHMSJgoORG93bmxvYWROdW1iZXIYASABKAVSDkRvd25sb2FkTnVtYmVy');
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
