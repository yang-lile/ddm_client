import 'package:ddm_client/route/app_pages.dart';
import 'package:ddm_client/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      translations: TextTranslation(),
      locale: Locale('zh', 'CN'),
      fallbackLocale: Locale('en', 'US'),
      title: 'DDM'.tr,
      initialRoute: Routes.GUIDE,
      getPages: AppPages.pages,
      darkTheme: ThemeData.dark(),
    ),
  );
}
