import 'dart:io';

import 'package:ddm_client/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  initMain();
  runApp(
    GetMaterialApp(
      title: 'DDM',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MainPage()),
      ],
    ),
  );
}

Future<void> initMain() async {
  final Directory appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.initFlutter(appDocumentDir.path);
  // to save user data
  Hive.openBox('app_data');
  // to save rulers
  Hive.openBox('rulers');
}
