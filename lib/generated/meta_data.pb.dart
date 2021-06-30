///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $1;

import 'meta_data.pbenum.dart';

export 'meta_data.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class RulerId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RulerId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleName', protoName: 'ruleName')
    ..hasRequiredFields = false
  ;

  RulerId._() : super();
  factory RulerId({
    $core.String? source,
    $core.String? ruleName,
  }) {
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    if (ruleName != null) {
      _result.ruleName = ruleName;
    }
    return _result;
  }
  factory RulerId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RulerId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RulerId clone() => RulerId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RulerId copyWith(void Function(RulerId) updates) => super.copyWith((message) => updates(message as RulerId)) as RulerId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RulerId create() => RulerId._();
  RulerId createEmptyInstance() => create();
  static $pb.PbList<RulerId> createRepeated() => $pb.PbList<RulerId>();
  @$core.pragma('dart2js:noInline')
  static RulerId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RulerId>(create);
  static RulerId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get source => $_getSZ(0);
  @$pb.TagNumber(1)
  set source($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ruleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set ruleName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRuleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRuleName() => clearField(2);
}

class Ruler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ruler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..aOM<RulerId>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rulerId', protoName: 'rulerId', subBuilder: RulerId.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'describe')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scenesUsed', protoName: 'scenesUsed')
    ..e<System>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'system', $pb.PbFieldType.OE, defaultOrMaker: System.all, valueOf: System.valueOf, enumValues: System.values)
    ..aOM<$1.Any>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: $1.Any.create)
    ..hasRequiredFields = false
  ;

  Ruler._() : super();
  factory Ruler({
    RulerId? rulerId,
    $core.String? describe,
    $core.Iterable<$core.String>? scenesUsed,
    System? system,
    $1.Any? data,
  }) {
    final _result = create();
    if (rulerId != null) {
      _result.rulerId = rulerId;
    }
    if (describe != null) {
      _result.describe = describe;
    }
    if (scenesUsed != null) {
      _result.scenesUsed.addAll(scenesUsed);
    }
    if (system != null) {
      _result.system = system;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory Ruler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ruler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ruler clone() => Ruler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ruler copyWith(void Function(Ruler) updates) => super.copyWith((message) => updates(message as Ruler)) as Ruler; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ruler create() => Ruler._();
  Ruler createEmptyInstance() => create();
  static $pb.PbList<Ruler> createRepeated() => $pb.PbList<Ruler>();
  @$core.pragma('dart2js:noInline')
  static Ruler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ruler>(create);
  static Ruler? _defaultInstance;

  @$pb.TagNumber(1)
  RulerId get rulerId => $_getN(0);
  @$pb.TagNumber(1)
  set rulerId(RulerId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRulerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRulerId() => clearField(1);
  @$pb.TagNumber(1)
  RulerId ensureRulerId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get describe => $_getSZ(1);
  @$pb.TagNumber(2)
  set describe($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescribe() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescribe() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get scenesUsed => $_getList(2);

  @$pb.TagNumber(4)
  System get system => $_getN(3);
  @$pb.TagNumber(4)
  set system(System v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSystem() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystem() => clearField(4);

  @$pb.TagNumber(5)
  $1.Any get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($1.Any v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);
  @$pb.TagNumber(5)
  $1.Any ensureData() => $_ensure(4);
}

class Stars extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stars', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'starNumber', $pb.PbFieldType.O3, protoName: 'starNumber')
    ..hasRequiredFields = false
  ;

  Stars._() : super();
  factory Stars({
    $core.int? starNumber,
  }) {
    final _result = create();
    if (starNumber != null) {
      _result.starNumber = starNumber;
    }
    return _result;
  }
  factory Stars.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stars.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stars clone() => Stars()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stars copyWith(void Function(Stars) updates) => super.copyWith((message) => updates(message as Stars)) as Stars; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Stars create() => Stars._();
  Stars createEmptyInstance() => create();
  static $pb.PbList<Stars> createRepeated() => $pb.PbList<Stars>();
  @$core.pragma('dart2js:noInline')
  static Stars getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stars>(create);
  static Stars? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get starNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set starNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStarNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearStarNumber() => clearField(1);
}

class Downloads extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Downloads', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DownloadNumber', $pb.PbFieldType.O3, protoName: 'DownloadNumber')
    ..hasRequiredFields = false
  ;

  Downloads._() : super();
  factory Downloads({
    $core.int? downloadNumber,
  }) {
    final _result = create();
    if (downloadNumber != null) {
      _result.downloadNumber = downloadNumber;
    }
    return _result;
  }
  factory Downloads.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Downloads.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Downloads clone() => Downloads()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Downloads copyWith(void Function(Downloads) updates) => super.copyWith((message) => updates(message as Downloads)) as Downloads; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Downloads create() => Downloads._();
  Downloads createEmptyInstance() => create();
  static $pb.PbList<Downloads> createRepeated() => $pb.PbList<Downloads>();
  @$core.pragma('dart2js:noInline')
  static Downloads getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Downloads>(create);
  static Downloads? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get downloadNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set downloadNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDownloadNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearDownloadNumber() => clearField(1);
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Version', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Version._() : super();
  factory Version({
    $core.int? version,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Version clone() => Version()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version)) as Version; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);
}

class NeedUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NeedUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'needUpdate', protoName: 'needUpdate')
    ..hasRequiredFields = false
  ;

  NeedUpdate._() : super();
  factory NeedUpdate({
    $core.bool? needUpdate,
  }) {
    final _result = create();
    if (needUpdate != null) {
      _result.needUpdate = needUpdate;
    }
    return _result;
  }
  factory NeedUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NeedUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NeedUpdate clone() => NeedUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NeedUpdate copyWith(void Function(NeedUpdate) updates) => super.copyWith((message) => updates(message as NeedUpdate)) as NeedUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NeedUpdate create() => NeedUpdate._();
  NeedUpdate createEmptyInstance() => create();
  static $pb.PbList<NeedUpdate> createRepeated() => $pb.PbList<NeedUpdate>();
  @$core.pragma('dart2js:noInline')
  static NeedUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NeedUpdate>(create);
  static NeedUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get needUpdate => $_getBF(0);
  @$pb.TagNumber(1)
  set needUpdate($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNeedUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearNeedUpdate() => clearField(1);
}

