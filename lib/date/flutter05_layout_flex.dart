import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack布局允许你将多个子件堆叠在一起
    // 你可以使用Positioned来定位子件
    // 这里创建一个简单的Stack布局，包含两个IconContainer
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 5,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            right: 10,
            top: 5,
            child: Text(
              "Hello Flutter！",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color = Colors.white;
  IconData icon = Icons.home;

  IconContainer(this.icon, {Key? key, this.color = Colors.blue})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 50,
      // width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.red, size: 30),
    );
  }
}
