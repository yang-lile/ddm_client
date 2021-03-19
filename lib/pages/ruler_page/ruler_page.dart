import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart' as MyMeta;
import 'package:ddm_client/pages/ruler_page/contro_controller.dart';
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
      body: Builder(
        builder: (context) {
          var widgets = getWidgets(ruler);
          return ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: widgets[index],
            ),
          );
        },
      ),
    );
  }

  List<Widget> getWidgets(MyMeta.Ruler ruler) {
    List<Widget> mainWidget = [];
    printInfo(info: ruler.metaData.toString());
    for (var item in ruler.metaData) {
      switch (item) {
        case MyMeta.MetaData.TEXT:
          mainWidget.add(
            TextFormField(
              initialValue: 'Input text',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Label text',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
          );
          break;
        case MyMeta.MetaData.TIME:
          mainWidget.add(Text(
            'no time',
            style: Get.textTheme.caption,
          ));
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

class MetaComponent extends StatelessWidget {
  const MetaComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: 'Input text'.tr,
        decoration: InputDecoration(
          labelText: 'Label text'.tr,
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(Icons.arrow_drop_down_rounded),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
