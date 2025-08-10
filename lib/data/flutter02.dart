import 'package:flutter/material.dart';

// 安装Awesome Flutter Snippets插件后，输入statelessW可以快速生成StatelessWidget的代码模板
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow, // 背景颜色
          border: Border.all(color: Colors.red, width: 5), // 边框颜色和宽度
          borderRadius: BorderRadius.circular(10), // 圆角
          boxShadow: [
            // 阴影效果
            BoxShadow(
              color: Colors.blue, // 阴影颜色
              offset: Offset(5, 5), // 阴影偏移
              blurRadius: 10, // 模糊半径
            ),
          ],
          gradient: const LinearGradient(
            // 渐变背景
            colors: [Colors.yellow, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Text(
          "Hello Flutter！",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            // color: Colors.red,
            color: Color.fromRGBO(244, 244, 123, 1),
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
