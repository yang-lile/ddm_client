import 'dart:io';
import 'dart:typed_data';

import 'package:ddm_client/generated/meta_data.pbgrpc.dart';
import 'package:ddm_client/grpc_stub.dart';
import 'package:ddm_client/route/app_pages.dart';
import 'package:ddm_client/static_const_pool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive_flutter/hive_flutter.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // delayed for get data from web
    Future.delayed(Duration(seconds: 1), () => Get.offAllNamed(Routes.HOME));
    initMain().then((value) => firstOpen());

    return ColoredBox(
      color: Colors.blue,
      child: Center(
        child: Text(
          "DDM",
          style: Get.textTheme.headline1,
        ),
      ),
    );
  }

  Future<void> initMain() async {
    // prepare database and file manager
    if (GetPlatform.isMobile) {
      StaticConstPool.appDocumentDir =
          await path_provider.getApplicationDocumentsDirectory();
    } else {
      StaticConstPool.appDocumentDir = Directory('~/.ddm');
    }
    if (GetPlatform.isAndroid) {
      StaticConstPool.appExternalStorage =
          await path_provider.getExternalStorageDirectories(
                type: path_provider.StorageDirectory.documents,
              ) ??
              [];
      print(StaticConstPool.appExternalStorage);
    }
    await Hive.initFlutter(StaticConstPool.appDocumentDir.path);
  }

  Future firstOpen() async {
    if (File("${StaticConstPool.appDocumentDir.path}/app_data.hive")
        .existsSync()) {
      printInfo(info: "has this");
      // to save user data
      final appData = await Hive.openBox('app_data');
      if (GetPlatform.isAndroid) {
        appData.put('user_root_path', '/storage/emulated/0');
      }
    } else {
      printInfo(info: "null lasdfadsf");
    }
    await Hive.openBox('app_data');
    Hive.openBox<Uint8List>('user_rulers');
    await getDataFromServer().toList();
  }

  Stream<void> getDataFromServer() async* {
    final stub = GrpcStub.instance.stub;
    var rulers = stub.getRulers(Empty());
    final rulersBox = await Hive.openBox<String>('rulers');
    rulersBox.clear();
    await for (var item in rulers) {
      rulersBox.add(item.writeToJson());
    }
    return;
  }
}
