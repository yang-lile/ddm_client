import 'dart:io';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

class RoutePathController extends GetxController {
  late Directory directory;

  @override
  onInit() {
    final box = Hive.box('app_data');
    this.directory = Directory(box.get('user_root_path'));
    super.onInit();
  }

  void inFolder(String folderName) {
    directory = Directory("${directory.path}/$folderName");
    update();
  }

  void outFolder() {
    directory = directory.parent;
    update();
  }
}
