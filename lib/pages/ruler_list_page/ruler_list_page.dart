// import 'package:ddm_client/generated/text_form_field.pb.dart';
// import 'package:ddm_client/route/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive/hive.dart';

// class RulerListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final args = Get.arguments[0];

//     final GlobalKey<AnimatedListState> _listKey =
//         GlobalKey<AnimatedListState>();
//     // 一个规则一个数据库
//     final box = Hive.openBox<String>('$args');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args),
//       ),
//       body: FutureBuilder<Box<String>>(
//         future: box,
//         builder: (BuildContext context, AsyncSnapshot<Box<String>> snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             final _box = snapshot.data;
//             final data = TextFormFieldP.fromJson(_box!.get(0) ?? "");
//             return AnimatedList(
//               key: _listKey,
//               initialItemCount: _box.length,
//               itemBuilder: (context, index, animation) {
//                 return FadeTransition(
//                   opacity: animation,
//                   child: Card(
//                     child: ListTile(
//                       title: Text(data.text),
//                       onTap: () {
//                         Get.toNamed(Routes.RULER, arguments: [index]);
//                       },
//                     ),
//                   ),
//                 );
//               },
//             );
//           } else
//             return CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
