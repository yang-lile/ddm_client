///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'modules/text_form_field.pb.dart' as $1;

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
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instruction')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scenesUsed', protoName: 'scenesUsed')
    ..aOM<Pkey>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pkey', subBuilder: Pkey.create)
    ..aOM<Skey>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skey', subBuilder: Skey.create)
    ..aOM<Dkey>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dkey', subBuilder: Dkey.create)
    ..hasRequiredFields = false
  ;

  Ruler._() : super();
  factory Ruler({
    RulerId? rulerId,
    $core.String? instruction,
    $core.Iterable<$core.String>? scenesUsed,
    Pkey? pkey,
    Skey? skey,
    Dkey? dkey,
  }) {
    final _result = create();
    if (rulerId != null) {
      _result.rulerId = rulerId;
    }
    if (instruction != null) {
      _result.instruction = instruction;
    }
    if (scenesUsed != null) {
      _result.scenesUsed.addAll(scenesUsed);
    }
    if (pkey != null) {
      _result.pkey = pkey;
    }
    if (skey != null) {
      _result.skey = skey;
    }
    if (dkey != null) {
      _result.dkey = dkey;
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
  $core.String get instruction => $_getSZ(1);
  @$pb.TagNumber(2)
  set instruction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstruction() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstruction() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get scenesUsed => $_getList(2);

  @$pb.TagNumber(4)
  Pkey get pkey => $_getN(3);
  @$pb.TagNumber(4)
  set pkey(Pkey v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPkey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPkey() => clearField(4);
  @$pb.TagNumber(4)
  Pkey ensurePkey() => $_ensure(3);

  @$pb.TagNumber(5)
  Skey get skey => $_getN(4);
  @$pb.TagNumber(5)
  set skey(Skey v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSkey() => $_has(4);
  @$pb.TagNumber(5)
  void clearSkey() => clearField(5);
  @$pb.TagNumber(5)
  Skey ensureSkey() => $_ensure(4);

  @$pb.TagNumber(6)
  Dkey get dkey => $_getN(5);
  @$pb.TagNumber(6)
  set dkey(Dkey v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDkey() => $_has(5);
  @$pb.TagNumber(6)
  void clearDkey() => clearField(6);
  @$pb.TagNumber(6)
  Dkey ensureDkey() => $_ensure(5);
}

enum Pkey_Primary {
  textFormFieldP, 
  notSet
}

class Pkey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Pkey_Primary> _Pkey_PrimaryByTag = {
    1 : Pkey_Primary.textFormFieldP,
    0 : Pkey_Primary.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pkey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$1.primary>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textFormFieldP', subBuilder: $1.primary.create)
    ..hasRequiredFields = false
  ;

  Pkey._() : super();
  factory Pkey({
    $1.primary? textFormFieldP,
  }) {
    final _result = create();
    if (textFormFieldP != null) {
      _result.textFormFieldP = textFormFieldP;
    }
    return _result;
  }
  factory Pkey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pkey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pkey clone() => Pkey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pkey copyWith(void Function(Pkey) updates) => super.copyWith((message) => updates(message as Pkey)) as Pkey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pkey create() => Pkey._();
  Pkey createEmptyInstance() => create();
  static $pb.PbList<Pkey> createRepeated() => $pb.PbList<Pkey>();
  @$core.pragma('dart2js:noInline')
  static Pkey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pkey>(create);
  static Pkey? _defaultInstance;

  Pkey_Primary whichPrimary() => _Pkey_PrimaryByTag[$_whichOneof(0)]!;
  void clearPrimary() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.primary get textFormFieldP => $_getN(0);
  @$pb.TagNumber(1)
  set textFormFieldP($1.primary v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextFormFieldP() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextFormFieldP() => clearField(1);
  @$pb.TagNumber(1)
  $1.primary ensureTextFormFieldP() => $_ensure(0);
}

enum Skey_Secondary {
  textFormFieldS, 
  notSet
}

class Skey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Skey_Secondary> _Skey_SecondaryByTag = {
    1 : Skey_Secondary.textFormFieldS,
    0 : Skey_Secondary.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Skey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$1.secondary>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textFormFieldS', subBuilder: $1.secondary.create)
    ..hasRequiredFields = false
  ;

  Skey._() : super();
  factory Skey({
    $1.secondary? textFormFieldS,
  }) {
    final _result = create();
    if (textFormFieldS != null) {
      _result.textFormFieldS = textFormFieldS;
    }
    return _result;
  }
  factory Skey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Skey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Skey clone() => Skey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Skey copyWith(void Function(Skey) updates) => super.copyWith((message) => updates(message as Skey)) as Skey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Skey create() => Skey._();
  Skey createEmptyInstance() => create();
  static $pb.PbList<Skey> createRepeated() => $pb.PbList<Skey>();
  @$core.pragma('dart2js:noInline')
  static Skey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Skey>(create);
  static Skey? _defaultInstance;

  Skey_Secondary whichSecondary() => _Skey_SecondaryByTag[$_whichOneof(0)]!;
  void clearSecondary() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.secondary get textFormFieldS => $_getN(0);
  @$pb.TagNumber(1)
  set textFormFieldS($1.secondary v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextFormFieldS() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextFormFieldS() => clearField(1);
  @$pb.TagNumber(1)
  $1.secondary ensureTextFormFieldS() => $_ensure(0);
}

enum Dkey_Decoration {
  textFormFieldD, 
  notSet
}

class Dkey extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Dkey_Decoration> _Dkey_DecorationByTag = {
    1 : Dkey_Decoration.textFormFieldD,
    0 : Dkey_Decoration.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Dkey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$1.decoration>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textFormFieldD', subBuilder: $1.decoration.create)
    ..hasRequiredFields = false
  ;

  Dkey._() : super();
  factory Dkey({
    $1.decoration? textFormFieldD,
  }) {
    final _result = create();
    if (textFormFieldD != null) {
      _result.textFormFieldD = textFormFieldD;
    }
    return _result;
  }
  factory Dkey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Dkey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Dkey clone() => Dkey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Dkey copyWith(void Function(Dkey) updates) => super.copyWith((message) => updates(message as Dkey)) as Dkey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Dkey create() => Dkey._();
  Dkey createEmptyInstance() => create();
  static $pb.PbList<Dkey> createRepeated() => $pb.PbList<Dkey>();
  @$core.pragma('dart2js:noInline')
  static Dkey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dkey>(create);
  static Dkey? _defaultInstance;

  Dkey_Decoration whichDecoration() => _Dkey_DecorationByTag[$_whichOneof(0)]!;
  void clearDecoration() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.decoration get textFormFieldD => $_getN(0);
  @$pb.TagNumber(1)
  set textFormFieldD($1.decoration v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextFormFieldD() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextFormFieldD() => clearField(1);
  @$pb.TagNumber(1)
  $1.decoration ensureTextFormFieldD() => $_ensure(0);
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

