import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          // 设置主轴对齐方式
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 普通按钮
            ElevatedButton(
              onPressed: () {},
              child: Text("普通按钮"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    // 设置按钮圆角大小
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
            ),
            // 文本按钮
            TextButton(
              onPressed: () {},
              child: Text("文本按钮"),
              style: ButtonStyle(
                // 设置按钮的背景颜色
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                // 文字颜色
                foregroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
            // 边框按钮
            OutlinedButton(
              onPressed: null,
              child: Text("边框按钮"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  // 圆形按钮，通过 Container 调整大小
                  CircleBorder(side: BorderSide(color: Colors.red, width: 2)),
                ),
              ),
            ),
            // 图标按钮
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  // 设置边框格式，颜色、宽度等
                  BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 以上Button均可以构造为带图标的按钮
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.send),
              label: Text("发送"),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 60,
              child: ElevatedButton(onPressed: () {}, child: Text("自定义宽高的按钮")),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 自适应大小的按钮
            Expanded(
              flex: 1,
              child: Container(
                width: 200, // 此时宽度就失效了
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("自定义宽高的按钮"),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
