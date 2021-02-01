import 'package:ddm_client/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        title: 'DDM',
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => MainPage()),
        ],
      ),
    );
