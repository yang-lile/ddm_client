import 'package:ddm_client/route/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      children: [
        SceneItem(
          iconData: Icons.event_note_rounded,
          name: "密码本",
          maxSize: 250,
          aimRoute: Routes.PASSWORD,
        ),
      ],
    );
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
            Get.toNamed(aimRoute);
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
