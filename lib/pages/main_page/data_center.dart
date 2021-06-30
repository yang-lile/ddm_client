import 'package:ddm_client/route/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

/// 展示已经下载的规则列表
class DataCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final box = Hive.box<String>('rulers');
    printInfo(info: box.toString());
    final items = [
      'Download',
      'Pictures',
      'DCIM',
      'Documents',
      'Fonts',
      'Music',
    ];
    final items2 = [
      '系统下载目录',
      '系统图片目录',
      '系统照片媒体目录',
      '系统文档目录',
      '系统字体目录',
      '系统音乐目录',
    ];
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.0,
      // final data = Ruler.fromJson(box.get(index) ?? "");
      // printInfo(info: data.toString());
      // final title = "${data.rulerId.source}/${data.rulerId.ruleName}";
      children: [
        for (int i = 0; i < items.length; i++)
          Card(
            child: ListTile(
              title: Text(items[i]),
              subtitle: Text(items2[i]),
              onTap: () {
                Get.toNamed(Routes.RULERLIST, arguments: [items[i]]);
              },
            ),
          )
      ],
    );
    // GridView.extent(
    //   maxCrossAxisExtent: 250,
    //   children: [
    //     // SceneItem(
    //     //   iconData: Icons.event_note_rounded,
    //     //   name: "密码本",
    //     //   maxSize: 250,
    //     //   aimRoute: ,
    //     // ),
    //     // TextField(
    //     //   autocorrect: ,
    //     //   autofillHints: ,
    //     //   autofocus: ,
    //     //   textAlign: ,
    //     //   textAlignVertical: ,
    //     //   keyboardAppearance: ,
    //     //   textInputAction: ,
    //     //   buildCounter: ,
    //     //   controller: ,
    //     //   cursorColor: ,
    //     //   cursorHeight: ,
    //     //   cursorRadius: ,
    //     //   cursorWidth: ,
    //     //   onChanged: ,
    //     //   showCursor: ,
    //     //   textCapitalization: ,
    //     //   scrollController: ,
    //     //   obscuringCharacter: ,
    //     //   onEditingComplete: ,
    //     //   selectionControls: ,
    //     //   decoration: ,
    //     //   textDirection: ,
    //     //   smartDashesType: ,
    //     //   enableInteractiveSelection: ,
    //     //   enableSuggestions: ,
    //     //   enabled: ,
    //     //   expands: ,
    //     //   maxLengthEnforcement: ,
    //     //   inputFormatters: [],
    //     //   obscureText: ,
    //     //   onTap: ,
    //     //   readOnly: ,
    //     //   toolbarOptions: ,
    //     //   smartQuotesType: ,
    //     //   keyboardType: ,
    //     //   scrollPadding: ,
    //     //   scrollPhysics: ,
    //     //   strutStyle: ,
    //     //   style: ,
    //     //   focusNode: ,
    //     //   key: ,
    //     //   maxLength: ,
    //     //   maxLines: ,
    //     //   minLines: ,
    //     // ),
    //   ],
    // );
  }
}

class SceneItem extends StatelessWidget {
  final IconData iconData;
  final String name;
  final double maxSize;
  final String aimRoute;

  SceneItem({
    required this.iconData,
    required this.name,
    required this.maxSize,
    required this.aimRoute,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final _borderRadius = BorderRadius.only(
      topRight: Radius.circular(maxSize / 4),
      bottomLeft: Radius.circular(maxSize / 3),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        color: Colors.blue.shade700,
        borderRadius: _borderRadius,
        child: InkResponse(
          borderRadius: _borderRadius,
          containedInkWell: true,
          // 点击或者touch控件高亮时显示的颜色在控件上层,水波纹下层
          highlightColor: Colors.transparent,
          // 点击或者touch控件高亮的shape形状
          highlightShape: BoxShape.rectangle,
          onTap: () {
            Get.to(aimRoute);
            debugPrint("sdfa");
          },
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    iconData,
                    size: maxSize / 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: maxSize / 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
