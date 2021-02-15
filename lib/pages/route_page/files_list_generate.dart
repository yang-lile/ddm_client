import 'dart:io';

import 'package:ddm_client/pages/route_page/route_path_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilesListGenerate extends StatelessWidget {
  const FilesListGenerate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RoutePathController>(
      init: RoutePathController(),
      builder: (routePathController) {
        var directory = routePathController.directory;
        var filesList = directory.listSync(followLinks: true);
        return ListView.separated(
          itemCount: filesList.length,
          itemBuilder: (context, index) {
            var leadingIcon = filesList[index].statSync().type ==
                    FileSystemEntityType.directory
                ? Icons.folder_rounded
                : Icons.insert_drive_file_outlined;
            return ListTile(
              leading: Icon(leadingIcon),
              title: Text(filesList[index].path.split('/').last),
              onTap: () {
                routePathController
                    .inFolder(filesList[index].path.split('/').last);
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 1.0,
            );
          },
        );
      },
    );
  }
}
