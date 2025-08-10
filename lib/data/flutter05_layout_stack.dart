import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack布局可以将多个子件堆叠在一起，通过使用Positioned来相对定位子件
    // 相对于外部容器进行定位的，如果没有容器，则作为根组件相对于屏幕定位
    // 需要外部容器指定宽高，否则写Stack子组件会直接报错
    // return Container(
    //   height: 400,
    //   width: 300,
    //   color: Colors.red,
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         left: 10,
    //         bottom: 5,
    //         child: Container(
    //           alignment: Alignment.center,
    //           height: 100,
    //           width: 100,
    //           color: Colors.blue,
    //         ),
    //       ),
    //       Positioned(
    //         right: 10,
    //         top: 5,
    //         child: Text(
    //           "Hello Flutter！",
    //           style: TextStyle(color: Colors.white, fontSize: 20),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // 获取屏幕宽度和高度
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 44), // 留出空间给顶部部导航
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/img/quake.png"),
              ),
              title: Text("Item $index"),
              subtitle: Text("This is item number $index"),
            );
          },
        ),
        Positioned(
          left: 0,
          top: 0,
          // 配置子组件的宽度和高度，否则子元素没大小
          // 宽度设置成屏幕大小是希望Stack的子组件能够占满屏幕
          width: screenWidth,
          height: 44,
          child: Container(
            alignment: Alignment.center,
            height: 44,
            color: Colors.blue,
            child: const Text(
              "二级导航",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
