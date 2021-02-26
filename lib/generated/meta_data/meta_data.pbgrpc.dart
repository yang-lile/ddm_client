///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'meta_data.pb.dart' as $0;
export 'meta_data.pb.dart';

class DDMClient extends $grpc.Client {
  static final _$getRulers = $grpc.ClientMethod<$0.Empty, $0.Ruler>(
      '/rulers.DDM/getRulers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Ruler.fromBuffer(value));
  static final _$getStars = $grpc.ClientMethod<$0.RulerId, $0.Stars>(
      '/rulers.DDM/getStars',
      ($0.RulerId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Stars.fromBuffer(value));
  static final _$getPath = $grpc.ClientMethod<$0.RulerId, $0.PathData>(
      '/rulers.DDM/getPath',
      ($0.RulerId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PathData.fromBuffer(value));
  static final _$getVersion = $grpc.ClientMethod<$0.Version, $0.NeedUpdate>(
      '/rulers.DDM/getVersion',
      ($0.Version value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NeedUpdate.fromBuffer(value));

  DDMClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Ruler> getRulers($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getRulers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Stars> getStars($0.RulerId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStars, request, options: options);
  }

  $grpc.ResponseStream<$0.PathData> getPath($0.RulerId request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getPath, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.NeedUpdate> getVersion($0.Version request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVersion, request, options: options);
  }
}

abstract class DDMServiceBase extends $grpc.Service {
  $core.String get $name => 'rulers.DDM';

  DDMServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Ruler>(
        'getRulers',
        getRulers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Ruler value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RulerId, $0.Stars>(
        'getStars',
        getStars_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RulerId.fromBuffer(value),
        ($0.Stars value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RulerId, $0.PathData>(
        'getPath',
        getPath_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RulerId.fromBuffer(value),
        ($0.PathData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Version, $0.NeedUpdate>(
        'getVersion',
        getVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Version.fromBuffer(value),
        ($0.NeedUpdate value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Ruler> getRulers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getRulers(call, await request);
  }

  $async.Future<$0.Stars> getStars_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RulerId> request) async {
    return getStars(call, await request);
  }

  $async.Stream<$0.PathData> getPath_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RulerId> request) async* {
    yield* getPath(call, await request);
  }

  $async.Future<$0.NeedUpdate> getVersion_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Version> request) async {
    return getVersion(call, await request);
  }

  $async.Stream<$0.Ruler> getRulers($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Stars> getStars($grpc.ServiceCall call, $0.RulerId request);
  $async.Stream<$0.PathData> getPath(
      $grpc.ServiceCall call, $0.RulerId request);
  $async.Future<$0.NeedUpdate> getVersion(
      $grpc.ServiceCall call, $0.Version request);
}
