///
//  Generated code. Do not modify.
//  source: modules/text_form_field.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class primary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'primary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'text_form_field'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  primary._() : super();
  factory primary({
    $core.String? text,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory primary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory primary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  primary clone() => primary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  primary copyWith(void Function(primary) updates) => super.copyWith((message) => updates(message as primary)) as primary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static primary create() => primary._();
  primary createEmptyInstance() => create();
  static $pb.PbList<primary> createRepeated() => $pb.PbList<primary>();
  @$core.pragma('dart2js:noInline')
  static primary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<primary>(create);
  static primary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class secondary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'secondary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'text_form_field'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hintText', protoName: 'hintText')
    ..hasRequiredFields = false
  ;

  secondary._() : super();
  factory secondary({
    $core.String? hintText,
  }) {
    final _result = create();
    if (hintText != null) {
      _result.hintText = hintText;
    }
    return _result;
  }
  factory secondary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory secondary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  secondary clone() => secondary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  secondary copyWith(void Function(secondary) updates) => super.copyWith((message) => updates(message as secondary)) as secondary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static secondary create() => secondary._();
  secondary createEmptyInstance() => create();
  static $pb.PbList<secondary> createRepeated() => $pb.PbList<secondary>();
  @$core.pragma('dart2js:noInline')
  static secondary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<secondary>(create);
  static secondary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hintText => $_getSZ(0);
  @$pb.TagNumber(1)
  set hintText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHintText() => $_has(0);
  @$pb.TagNumber(1)
  void clearHintText() => clearField(1);
}

class decoration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'decoration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'text_form_field'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  decoration._() : super();
  factory decoration() => create();
  factory decoration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory decoration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  decoration clone() => decoration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  decoration copyWith(void Function(decoration) updates) => super.copyWith((message) => updates(message as decoration)) as decoration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static decoration create() => decoration._();
  decoration createEmptyInstance() => create();
  static $pb.PbList<decoration> createRepeated() => $pb.PbList<decoration>();
  @$core.pragma('dart2js:noInline')
  static decoration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<decoration>(create);
  static decoration? _defaultInstance;
}

