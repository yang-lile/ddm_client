import 'package:flutter/material.dart';

class RulerListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedListState> _listKey =
        GlobalKey<AnimatedListState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("规则列表TODO"),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: 3,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            // child: RulerCard(
            //   ruler: rulers[index],
            //   pageState: FuntionPages.Home,
            //   index: index,
            //   listKey: _listKey,
            //   removeCallBack: () async {
            //     rulers.removeAt(index);
            //     await Hive.box<Uint8List>('user_rulers').deleteAt(index);
            //   },
            // ),
          );
        },
      ),
    );
  }
}
