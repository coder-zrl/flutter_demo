// importM
import 'package:flutter/material.dart';

void main() {
  runApp(
    // 所有的Flutter应用都需要MaterialApp包裹
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Hello Flutter!")), // 顶部导航栏
        body: const MyApp(),
      ),
    ),
  );
}

// 安装Awesome Flutter Snippets插件后，输入statelessW可以快速生成StatelessWidget的代码模板
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello Flutter！",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          // color: Colors.red,
          color: Color.fromRGBO(244, 244, 123, 1),
          fontSize: 40,
        ),
      ),
    );
  }
}
