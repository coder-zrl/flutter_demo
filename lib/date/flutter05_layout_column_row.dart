import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 基础的布局有Column、Row，这里只给一个Row的例子
    // Row是水平布局，Column是垂直布局
    return Row(
      children: [
        IconContainer(Icons.home, color: Colors.red),
        IconContainer(Icons.search),
        IconContainer(Icons.error, color: Colors.red),
        IconContainer(Icons.dark_mode, color: Colors.red),
        IconContainer(Icons.home_repair_service, color: Colors.black),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color = Colors.white;
  IconData icon = Icons.home;

  IconContainer(this.icon, {Key? key, this.color = Colors.white})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.red, size: 30),
    );
  }
}
