import 'package:flutter/material.dart';

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
