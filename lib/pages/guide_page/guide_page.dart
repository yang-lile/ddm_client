import 'dart:io';

import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_client/ip_data.dart';
import 'package:ddm_client/route/app_pages.dart';
import 'package:ddm_client/static_const_pool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:hive/hive.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive_flutter/hive_flutter.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // delayed for get data from web
    Future.delayed(Duration(seconds: 3), () => Get.offAllNamed(Routes.HOME));

    return ColoredBox(
      color: Colors.blue,
    );
  }
}

Future<void> initMain() async {


  // prepare database and file manager
  StaticConstPool.appDocumentDir =
      await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(StaticConstPool.appDocumentDir.path);
}

Future<void> firstOpen() async {
  if (File(
    "${StaticConstPool.appDocumentDir.path}/app_data.hive",
  ).existsSync()) {
    // to save user data
    final appData = await Hive.openBox('app_data');
    if (GetPlatform.isAndroid) {
      appData.put('user_root_path', '/storage/emulated/0');
    }
  } else {}
  await getDataFromServer().toList();
}

Stream<void> getDataFromServer() async* {
  final channel = grpc.ClientChannel(
    IpData.host,
    port: IpData.port,
    options: const grpc.ChannelOptions(
      credentials: grpc.ChannelCredentials.insecure(),
    ),
  );
  final stub = DDMClient(
    channel,
    options: grpc.CallOptions(timeout: Duration(seconds: 30)),
  );
  var rulers = stub.getRulers(Empty());
  final rulersBox = await Hive.openBox('rulers');
  await for (var item in rulers) {
    rulersBox.add(item.writeToBuffer());
  }

  return;
}
