// import 'package:ddm_client/generated/meta_data.pbgrpc.dart';
// import 'package:ddm_client/pages/ruler_page/contro_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class RulerPage extends StatelessWidget {
//   const RulerPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Ruler ruler = Get.arguments;
//     Get.put(ControController());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("${ruler.rulerId.source}/${ruler.rulerId.ruleName}"),
//       ),
//       body: Builder(
//         builder: (context) {
//           var widgets = getWidgets(ruler);
//           return ListView.builder(
//             itemCount: widgets.length,
//             itemBuilder: (context, index) => Padding(
//               padding: EdgeInsets.all(8.0),
//               child: widgets[index],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   List<Widget> getWidgets(Ruler ruler) {
//     List<Widget> mainWidget = [];
//     printInfo(info: ruler.metaData.toString());
//     for (var item in ruler.metaData) {
//       switch (item) {
//         case MetaData.TEXT:
//           mainWidget.add(
//             TextFormField(
//               initialValue: 'Input text',
//               decoration: InputDecoration(
//                 labelText: 'Label text',
//                 border: OutlineInputBorder(),
//                 suffixIcon: Icon(
//                   Icons.error,
//                 ),
//               ),
//             ),
//           );
//           break;
//         case MetaData.TIME:
//           mainWidget.add(Text(
//             'no time',
//             style: Get.textTheme.caption,
//           ));
//           break;
//         case MetaData.PASS_WORD:
//           mainWidget.add(Text('xxxxxxx'));
//           break;
//         default:
//       }
//     }
//     return mainWidget;
//   }
// }

// class MetaComponent extends StatelessWidget {
//   const MetaComponent({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//         initialValue: 'Input text'.tr,
//         decoration: InputDecoration(
//           labelText: 'Label text'.tr,
//           border: OutlineInputBorder(),
//           suffixIcon: IconButton(
//             icon: Icon(Icons.arrow_drop_down_rounded),
//             onPressed: () {},
//           ),
//         ),
//       ),
//     );
//   }
// }
