import 'package:ddm_client/generated/meta_data/meta_data.pb.dart';
import 'package:flutter/material.dart';

class RulerCard extends StatelessWidget {
  final Ruler ruler;
  const RulerCard({Key key, this.ruler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        trailing: IconButton(
          // like
          // icon: Icon(Icons.favorite_rounded),
          // color: Colors.pink[400],
          // dislike
          icon: Icon(Icons.favorite_outline_rounded),
          onPressed: () {},
        ),
        onTap: () {},
      ),
    );
  }
}
