import 'dart:io';

import 'package:ddm_client/route/app_pages.dart';
import 'package:ddm_client/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initMain();
  runApp(
    GetMaterialApp(
      translations: TextTranslation(),
      locale: Locale('zh', 'CN'),
      fallbackLocale: Locale('en', 'US'),
      title: 'DDM'.tr,
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    ),
  );
}

Future<void> initMain() async {
  // prepare database and file manager
  final Directory appDocumentDir =
      await path_provider.getApplicationDocumentsDirectory();
  final Directory exterStorageDir =
      await path_provider.getExternalStorageDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  // to save user data
  Hive.openBox('app_data');
  // to save rulers
  Hive.openBox('rulers');
  debugPrint(exterStorageDir.path);
}
