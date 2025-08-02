import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用GridView来创建一个网格布局
    // GridView.count是一个简单的网格布局，适合固定数量的子件
    // 可以使用GridView.builder来创建动态的网格布局
    // 这里使用GridView.count来创建一个2列的网格布局
    // return GridView.count(
    //   crossAxisCount: 2, // 每行显示2个
    //   padding: const EdgeInsets.all(10),
    //   children: List.generate(20, (index) {
    //     return Card(
    //       child: Center(
    //         child: ListTile(
    //           leading: CircleAvatar(
    //             radius: 28,
    //             backgroundImage: AssetImage("assets/img/quake.png"),
    //           ),
    //           title: Text("Item $index"),
    //           subtitle: Text("This is item number $index"),
    //         ),
    //       ),
    //     );
    //   }),
    // );

    // 使用GridView.extent来创建一个网格布局
    // GridView.extent允许你指定每个子件的最大宽度
    // 适合子件宽度不固定的情况
    // 这里设置每个子件的最大宽度为120像素
    return GridView.extent(
      maxCrossAxisExtent: 120, // 每个子件的最大宽度
      childAspectRatio: 0.7, // 子件的宽高比
      padding: const EdgeInsets.all(10),
      children: List.generate(20, (index) {
        return Card(
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                // radius: 28,
                backgroundImage: AssetImage("assets/img/quake.png"),
              ),
              title: Text("Item $index"),
              subtitle: Text("This is item number $index"),
            ),
          ),
        );
      }),
    );
  }
}
