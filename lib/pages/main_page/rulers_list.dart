import 'dart:typed_data';

import 'package:ddm_client/generated/meta_data/meta_data.pb.dart';
import 'package:ddm_client/pages/main_page/page_state_controller.dart';
import 'package:ddm_client/pages/main_page/ruler_card.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RulersList extends StatelessWidget {
  const RulersList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unit8List = Hive.box<Uint8List>('user_rulers').values.toList();
    List<Ruler> rulers = [];
    unit8List.forEach((element) {
      rulers.add(Ruler.fromBuffer(element));
    });
    final GlobalKey<AnimatedListState> _listKey =
        GlobalKey<AnimatedListState>();
    return AnimatedList(
      key: _listKey,
      initialItemCount: rulers.length,
      itemBuilder: (context, index, animation) {
        return FadeTransition(
          opacity: animation,
          child: RulerCard(
            ruler: rulers[index],
            pageState: FuntionPages.Home,
            index: index,
            listKey: _listKey,
            removeCallBack: () async {
              rulers.removeAt(index);
              await Hive.box<Uint8List>('user_rulers').deleteAt(index);
            },
          ),
        );
      },
    );
  }
}
