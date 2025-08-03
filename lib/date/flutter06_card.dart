import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          // 设置卡片的圆角
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // 设置卡片的阴影
          elevation: 20,
          // 设置卡片的边距
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                // BoxFit.cover 充满整个屏幕
                child: Image.asset("assets/img/梅里雪山.png", fit: BoxFit.cover),
              ),
              ListTile(
                // 方案一：使用ClipOval来裁剪图片为圆形
                // leading: ClipOval(
                //   child: Image.asset(
                //     "assets/img/quake.png",
                //     width: 50,
                //     height: 50,
                //     fit: BoxFit.cover,
                //   ),
                // ),

                // 方案二：使用CircleAvatar来显示圆形头像
                leading: CircleAvatar(
                  // radius: 25,
                  backgroundImage: AssetImage("assets/img/quake.png"),
                ),
                title: const Text("梅里雪山"),
                subtitle: const Text("梅里雪山位于云南省迪庆藏族自治州德钦县境内，是中国最美的雪山之一。"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //   // 使用AspectRatio来设置子组件的宽高比
  //   // 显示一个容器，宽度是屏幕的宽度，高度是容器的一半
  //   return AspectRatio(
  //     // 设置宽高比为2:1
  //     aspectRatio: 2 / 1,
  //     child: Container(color: Colors.red),
  //   );
  // }
}
