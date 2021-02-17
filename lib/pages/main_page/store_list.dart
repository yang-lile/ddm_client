import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_client/ip_data.dart';

import 'package:grpc/grpc.dart' as grpc;
import 'package:ddm_client/pages/main_page/ruler_card.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // return FutureBuilder(
    //   future: rulers.toList(),
    //   builder: (context, snap) {
    //     switch (snap.connectionState) {
    //       case ConnectionState.active:
    //       case ConnectionState.none:
    //       case ConnectionState.waiting:
    //         return Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       case ConnectionState.done:
    //         return ListView.builder(
    //           itemCount: snap.data.length,
    //           itemBuilder: (context, index) {
    //             final item = snap.data[index];
    //             return Dismissible(
    //               key: Key('${item.rulerId.source}/${item.rulerId.ruleName}'),
    //               direction: DismissDirection.endToStart,
    //               child: RulerCard(
    //                 ruler: item,
    //               ),
    //               background: ColoredBox(
    //                 color: Colors.green,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(right: 28.0),
    //                   child: Align(
    //                     alignment: Alignment.centerRight,
    //                     child: Icon(
    //                       Icons.add_circle_rounded,
    //                       size: 30,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             );
    //           },
    //         );
    //     }
    //     return CircularProgressIndicator();
    //   },
    // );
  }
}
