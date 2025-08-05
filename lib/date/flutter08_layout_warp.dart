import 'package:flutter/material.dart';

// Wrap可以实现流布局，单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Column表现几乎一致。但
// Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上
// 去扩展显示。
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 一行占不下后会自动排到第二行
    // return Padding(
    //   padding: EdgeInsets.all(10), // 外层包一个Padding就能有间距了
    //   child: Wrap(
    //     alignment: WrapAlignment.center, // 默认左对齐，可以设置每一行元素居中对齐
    //     spacing: 5, // 水平间距 *
    //     runSpacing: 10, // 垂直间距 *
    //     direction: Axis.vertical, // 默认水平方向，可以设置为垂直方向
    //     children: [
    //       Button("第1集", onPressed: () {}),
    //       Button("第2集", onPressed: () {}),
    //       Button("第3集", onPressed: () {}),
    //       Button("第4集", onPressed: () {}),
    //       Button("第5集（已完结）", onPressed: () {}),
    //       Button("第6集", onPressed: () {}),
    //       Button("第7集", onPressed: () {}),
    //       Button("第8集", onPressed: () {}),
    //       Button("第9集", onPressed: () {}),
    //       Button("第10集", onPressed: () {}),
    //       Button("第11集", onPressed: () {}),
    //       Button("第12集", onPressed: () {}),
    //       Button("第13集", onPressed: () {}),
    //       Button("第14集", onPressed: () {}),
    //       Button("第15集", onPressed: () {}),
    //       Button("第16集", onPressed: () {}),
    //       Button("第17集", onPressed: () {}),
    //       Button("第18集", onPressed: () {}),
    //     ],
    //   ),
    // );

    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [Text("热搜", style: Theme.of(context).textTheme.titleLarge)],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Button("女装", onPressed: () {}),
            Button("笔记本", onPressed: () {}),
            Button("玩具", onPressed: () {}),
            Button("文学", onPressed: () {}),
            Button("女装", onPressed: () {}),
            Button("时尚", onPressed: () {}),
            Button("男装", onPressed: () {}),
            Button("xxxx", onPressed: () {}),
            Button("手机", onPressed: () {}),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text("历史记录", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile(title: Text("女装")),
            Divider(),
            ListTile(title: Text("手机")),
            Divider(),
            ListTile(title: Text("电脑")),
            Divider(),
          ],
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(40),
          child: OutlinedButton.icon(
            //自适应
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black45),
            ),
            onPressed: () {},
            icon: const Icon(Icons.delete),
            label: const Text("清空历史记录"),
          ),
        ),
      ],
    );
  }
}

// 自定义按钮
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;

  // onPressed表示匿名函数，可以省略括号
  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey),
        foregroundColor: MaterialStateProperty.all(Colors.black45),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
