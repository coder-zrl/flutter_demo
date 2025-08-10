import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // // Column、ROW都继承自Flex类，Flex需要搭配Expanded使用
    // return Row(
    //   children: [
    //     // 使用Expanded来让子件占据剩余空间，指定宽高是无效的
    //     // Expanded会自动填充剩余空间，适合在Row或Column中使用
    //     // 这里设置了flex属性来控制子件的占比，将Row分为三份，上面占1份，下面占2份
    //     Expanded(
    //       child: IconContainer(Icons.home, color: Colors.orange),
    //       flex: 1, // 设置flex属性来控制子件的占比，将Row分为三份，这里占1份，下面占2份
    //     ),
    //     Expanded(child: IconContainer(Icons.search), flex: 2),
    //   ],
    // );

    // return Flex(
    //   direction: Axis.horizontal, // 设置方向为水平，表现和Row一样
    //   children: [
    //     Expanded(
    //       child: IconContainer(Icons.home, color: Colors.orange),
    //       flex: 1, // 设置flex属性来控制子件的占比，将Row分为三份，这里占1份，下面占2份
    //     ),
    //     Expanded(child: IconContainer(Icons.search), flex: 2),
    //   ],
    // );

    // 自适应 + 固定宽度的Row布局
    //   return Row(
    //     children: [
    //       // 左侧组件宽度自适应
    //       Expanded(
    //         child: IconContainer(Icons.home, color: Colors.orange),
    //         flex: 1, // 设置flex属性来控制子件的占比，将Row分为三份，这里占1份，下面占2份
    //       ),
    //       // 右侧组件宽度固定为50
    //       IconContainer(Icons.search),
    //     ],
    //   );
    // }

    return ListView(
      children: [
        Container(
          height: 180,
          color: Colors.blue,
          child: const Center(child: Text("Header")),
        ),
        Row(
          children: [
            // 左侧组件占2份
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: IconContainer(Icons.home, color: Colors.orange),
              ),
            ),
            // 右侧组件占1份，包含两个子件，子件各占一份
            Expanded(
              flex: 1,
              // 使用SizedBox来限制宽度
              child: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconContainer(Icons.search, color: Colors.pink),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconContainer(Icons.error, color: Colors.purple),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
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