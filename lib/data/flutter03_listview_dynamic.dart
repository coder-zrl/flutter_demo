import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _buildListTiles() {
    // 或者从dart文件中取也可以，也可以指定ListView.builder
    List<Widget> tiles = [];
    for (int i = 0; i < 10; i++) {
      tiles.add(
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage("assets/img/quake.png"),
          ),
          title: Text("Item $i"),
          subtitle: Text("This is item number $i"),
        ),
      );
      if (i < 9) {
        tiles.add(Divider()); // 添加分割线
      }
    }
    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: _buildListTiles(),
    );
  }
}
