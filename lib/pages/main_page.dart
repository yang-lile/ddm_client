import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
      ),
      body: DataManager(),
    );
  }
}

class DataManager extends StatelessWidget {
  const DataManager({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return RulerCard();
      },
    );
  }
}

class RulerCard extends StatelessWidget {
  const RulerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: ListTile(
        title: Text('Official/标题'),
        subtitle: Text('info hkluhklhluhliuh'),
        trailing: IconButton(
          // like
          // icon: Icon(Icons.favorite_rounded),
          // color: Colors.pink[400],
          // dislike
          icon: Icon(Icons.favorite_outline_rounded),
          onPressed: () {
          },
        ),
        onTap: () {},
      ),
    );
  }
}

