import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 300,
    //   height: 300,
    //   color: Colors.blue,
    //   // 使用Align来控制子组件的显示方位
    //   child: Align(
    //     // alignment: Alignment.center, // 设置对齐方式为居中
    //     alignment: Alignment(-0.5, 1),
    //     child: const Text("Header"),
    //   ),
    // );

    return Stack(
      children: [
        Align(alignment: Alignment.topLeft, child: Text("收藏")),
        Align(alignment: Alignment.topRight, child: Text("购买")),
      ],
    );
  }
}
