import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_client/ip_data.dart';
import 'package:grpc/grpc.dart' as grpc;

class GrpcStub {
  // init data base
  GrpcStub._privateConstructor() {
    final channel = grpc.ClientChannel(
      IpData.host,
      port: IpData.port,
      options: const grpc.ChannelOptions(
        credentials: grpc.ChannelCredentials.insecure(),
      ),
    );
    stub = DDMClient(
      channel,
      options: grpc.CallOptions(timeout: Duration(seconds: 30)),
    );
  }

  // Singleton
  static final GrpcStub _instance = GrpcStub._privateConstructor();

  static GrpcStub get instance => _instance;

  // must use await
  DDMClient stub;
}
