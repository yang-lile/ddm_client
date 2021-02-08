import 'package:ddm_client/pages/route_page.dart/route_path_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Permission get
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
          child: SizedBox(
            width: 200.0,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '文件夹名',
                      style: Get.textTheme.subtitle1,
                    ),
                    Text(
                      '文件数',
                      style: subTitleStyle(),
                    ),
                  ],
                ),
                Icon(Icons.arrow_drop_down_rounded),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<RoutePathController>(
        init: RoutePathController(),
        builder: (routePathController) {
          var directory = routePathController.directory;
          var filesList = directory.listSync(followLinks: true);
          print(filesList);
          return ListView.builder(
            // itemCount: filesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  // title: Text(filesList[index].path),
                  );
            },
          );
        },
      ),
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
