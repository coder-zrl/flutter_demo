import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children:[
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage("assets/img/quake.png"),
          ),
          title: Text("交流群-列表测试"),
          subtitle: Text("哈哈哈哈，你说的挺有意思的"),
        ),
        Divider(), // 分割线
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          subtitle: Text("This is the settings page"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          subtitle: Text("This is the about page"),
        ),
      ],
    );
  }
}
