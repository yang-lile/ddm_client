import 'package:ddm_client/pages/route_page/files_list_generate.dart';
import 'package:ddm_client/pages/route_page/route_path_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class SelectableAppBar extends StatelessWidget {
  const SelectableAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // gesture intercept
      onWillPop: () {
        var path = Get.find<RoutePathController>().directory.path;
        return Future(
          () => path == Hive.box('app_data').get('user_root_path'),
        ).then((value) {
          if (!value) {
            Get.find<RoutePathController>().outFolder();
            return value;
          }
          return true;
        });
      },
      child: Scaffold(
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
        body: FilesListGenerate(),
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
