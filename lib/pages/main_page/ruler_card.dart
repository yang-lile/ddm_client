import 'dart:typed_data';

import 'package:ddm_client/generated/meta_data/meta_data.pb.dart';
import 'package:ddm_client/pages/main_page/page_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RulerCard extends StatelessWidget {
  final Ruler ruler;
  final FuntionPages pageState;
  final int index;
  final GlobalKey<AnimatedListState> listKey;
  final Function removeCallBack;
  const RulerCard({
    Key key,
    @required this.ruler,
    @required this.pageState,
    this.index,
    this.listKey,
    this.removeCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final removeCard = Card(
      elevation: 1.5,
      child: ListTile(
        title: Text(
          '${ruler.rulerId.source}/${ruler.rulerId.ruleName}',
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          '${ruler.instruction}',
          maxLines: 5,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.favorite_outline_rounded),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.delete_forever_rounded),
              onPressed: null,
            )
          ],
        ),
        onTap: null,
      ),
    );
    return Card(
      elevation: 1.5,
      child: ListTile(
        title: Text(
          '${ruler.rulerId.source}/${ruler.rulerId.ruleName}',
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          '${ruler.instruction}',
          maxLines: 5,
        ),
        trailing: pageState == FuntionPages.Home
            ?
            // Home
            Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_outline_rounded),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.delete_forever_rounded),
                    onPressed: () async {
                      listKey.currentState.removeItem(
                        index,
                        (context, animation) => FadeTransition(
                          opacity: animation,
                          child: removeCard,
                        ),
                      );
                      removeCallBack();
                    },
                  )
                ],
              )
            :
            // Store
            IconButton(
                icon: Icon(Icons.download_rounded),
                onPressed: () => addRuler(context),
              ),
        onTap: () {
          // open a window to show message
        },
      ),
    );
  }

  void addRuler(BuildContext context) {
    final box = Hive.box<Uint8List>('user_rulers');
    box.add(ruler.writeToBuffer()).then(
      (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${ruler.rulerId.ruleName}添加完成',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.blue[100],
            margin: EdgeInsets.only(
              bottom: 30,
              left: 30,
              right: 30,
            ),
          ),
        );
      },
    );
  }
}
