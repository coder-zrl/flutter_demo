import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabs/category.dart';
import 'package:flutter_demo/pages/tabs/home.dart';
import 'package:flutter_demo/pages/tabs/settings.dart';
import 'package:flutter_demo/pages/tabs/user.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter!")), // 顶部导航栏
      body: _pages[_currentIndex], // _currentIndex变化的时候，组件会重新build，可以实现屏幕页面随之切换
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35, // 底部图标大小
        fixedColor: Colors.red, // item被选中后的颜色
        type: BottomNavigationBarType.fixed, // 如果底部有超过3个的菜单选项，就需要配置此参数，否则无法显示
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "用户"),
        ],
        currentIndex: _currentIndex, // 当前选中的索引，从0开始
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          print("点击了第$index个底部导航栏");
        },
      ),
    );
  }
}
