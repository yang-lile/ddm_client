import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class RoutePage extends StatelessWidget {
  final String _path = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final sdCardDir =
        path_provider.getExternalStorageDirectories();
        sdCardDir.then((value) => debugPrint("##### ${value[0].path}"));
    return Scaffold(
      appBar: AppBar(
        title: PopupMenuButton(
          padding: EdgeInsets.zero,
          itemBuilder: (context) {
            return <PopupMenuItem>[
              PopupMenuItem(
                child: SizedBox(
                  width: 90,
                  height: 78,
                ),
              ),
              PopupMenuItem(
                child: SizedBox(
                  width: 90,
                  height: 50,
                ),
              ),
            ];
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '文件夹名',
                style: Get.textTheme.subtitle1,
              ),
              Text(
                '文件数',
                style: Get.textTheme.subtitle2,
                // subTitleStyle(),
              ),
            ],
          ),
        ),
      ),
      // body: FutureBuilder(
      //   future: sdCardDir,
      //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       final List<FileSystemEntity> files = snapshot.data.listSync();
      //       // debugPrint(files);
      //       return ListView.builder(
      //         itemCount: files.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return ListTile(
      //             title: Text(files[index].path),
      //           );
      //         },
      //       );
      //     } else {
      //       return LinearProgressIndicator();
      //     }
      //   },
      // ),
    );
  }

  TextStyle subTitleStyle() {
    var style = Get.textTheme.bodyText2;
    var color = Get.theme.textTheme.caption.color;
    return style.copyWith(
      color: color,
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
    );
  }
}
// 130 8696 1533
