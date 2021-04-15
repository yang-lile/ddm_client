import 'dart:io';

class RoutePathController {
  late Directory directory;

  RoutePathController() {
    // final box = Hive.box('app_data');
    this.directory = Directory('/android/app/src');
  }

  void inFolder(String folderName) {
    directory = Directory("${directory.path}/$folderName");
  }

  void outFolder() {
    directory = directory.parent;
    // update();
  }
}

main(List<String> args) {
  var filePath = RoutePathController();
  print(filePath.directory.path);
  filePath.inFolder('qwe');
  print(filePath.directory.path);
  filePath.outFolder();
  print(filePath.directory.path);
  filePath.outFolder();
  print(filePath.directory.path);
  filePath.outFolder();
  print(filePath.directory.path);
}
