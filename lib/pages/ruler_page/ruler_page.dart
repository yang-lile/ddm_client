import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart' as MyMeta;
import 'package:ddm_client/pages/ruler_page/contro_controller.dart';
import 'package:ddm_client/pages/ruler_page/ruler_page_controller.dart';
import 'package:ddm_client/pages/ruler_page/time_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RulerPage extends StatelessWidget {
  const RulerPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyMeta.Ruler ruler = Get.arguments;
    Get.put(ControController());
    return Scaffold(
      appBar: AppBar(
        title: Text("${ruler.rulerId.source}/${ruler.rulerId.ruleName}"),
      ),
      body: GetBuilder(
        init: RulerPageController(),
        builder: (GetxController controller) {
          var widget =
              Get.find<RulerPageController>().editState == EditState.Edit
                  ? getEditWidget(ruler)
                  : getShowWidget(ruler);
          return ListView(
            children: widget,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew_rounded),
        onPressed: () {
          Get.find<RulerPageController>().cut();
        },
      ),
    );
  }

  List<Widget> getEditWidget(MyMeta.Ruler ruler) {
    List<Widget> mainWidget = [];
    ControController cc = Get.find<ControController>();
    for (var item in ruler.metaData) {
      switch (item) {
        case MyMeta.MetaData.TITLE:
          TextEditingController controller = TextEditingController(text: '标题');
          mainWidget.add(TextField(
            controller: controller,
          ));
          cc.addController(controller);
          break;
        case MyMeta.MetaData.TEXT:
          TextEditingController controller =
              TextEditingController(text: '大段文字');
          mainWidget.add(TextField(
            controller: controller,
            expands: true,
          ));
          cc.addController(controller);
          break;
        case MyMeta.MetaData.TIME:
          TimePickerController controller;
          mainWidget.add(
            TextButton(
              onPressed: () async {
                controller.timeOfDay = await showTimePicker(
                  context: Get.context,
                  initialTime: TimeOfDay.now(),
                );
              },
              child: Text('${controller.timeOfDay}'),
            ),
          );
          cc.addController(controller);
          break;
        case MyMeta.MetaData.MESSAGE:
          TextEditingController controller =
              TextEditingController(text: '提示性语句');
          mainWidget.add(TextField(
            controller: controller,
          ));
          cc.addController(controller);
          break;
        case MyMeta.MetaData.PATH:
          // path get from file
          // mainWidget.add();
          break;
        case MyMeta.MetaData.IMAGE:
          // get path from files
          // mainWidget.add(Image.file(File()));
          break;
        case MyMeta.MetaData.SINGLE_TEXT:
          TextEditingController controller =
              TextEditingController(text: '单行文字');
          mainWidget.add(TextField(
            controller: controller,
          ));
          cc.addController(controller);
          break;
        case MyMeta.MetaData.PASS_WORD:
          TextEditingController controller = TextEditingController(
            text: '密码',
          );
          mainWidget.add(TextField(
            controller: controller,
          ));
          cc.addController(controller);
          break;
        default:
      }
    }
    return mainWidget;
  }

  List<Widget> getShowWidget(MyMeta.Ruler ruler) {
    List<Widget> mainWidget = [];
    for (var item in ruler.metaData) {
      switch (item) {
        case MyMeta.MetaData.TITLE:
          mainWidget.add(
            Text(
              '标题',
              style: Get.textTheme.headline4,
            ),
          );
          break;
        case MyMeta.MetaData.TEXT:
          mainWidget.add(Text('''xxxxx
xxxxx
xxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxx'''));
          break;
        case MyMeta.MetaData.TIME:
          mainWidget.add(Text(
            'no time',
            style: Get.textTheme.caption,
          ));
          break;
        case MyMeta.MetaData.MESSAGE:
          mainWidget.add(Text(
            'no time',
            style: Get.textTheme.caption,
          ));
          break;
        case MyMeta.MetaData.PATH:
          // mainWidget.add();
          break;
        case MyMeta.MetaData.IMAGE:
          // mainWidget.add(Image.file(file));
          break;
        case MyMeta.MetaData.SINGLE_TEXT:
          mainWidget.add(Text('单行文字'));
          break;
        case MyMeta.MetaData.PASS_WORD:
          mainWidget.add(Text('xxxxxxx'));
          break;
        default:
      }
    }
    return mainWidget;
  }
}
