import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabs/category.dart';
import 'package:flutter_demo/pages/tabs/home.dart';
import 'package:flutter_demo/pages/tabs/settings.dart';
import 'package:flutter_demo/pages/tabs/user.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 需要实现 SingleTickerProviderStateMixin
// 如果要缓存当前浏览游标位置，需要实现AutomatedKeepAliveClientMixin，可以自行封装一个组件
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    // 监听_tabController的索引改变
    _tabController.addListener(() {
      print('当前索引：${_tabController.index}');
      // 老版可以通过这种方式获取当前索引
      if (_tabController.animation!.value == _tabController.index) {
        print('当前精确索引：${_tabController.index}');
      }
    });
  }

  // 组件销毁时调用
  @override
  void dispose() {
    super.dispose();
  }

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1, // 阴影
        leading: IconButton(
          // 左侧的按钮
          icon: Icon(Icons.menu),
          onPressed: () {
            print("点击左侧按钮");
          },
        ),
        backgroundColor: Colors.blue,
        title: const Text("Hello Flutter!"),
        actions: [
          // 右侧的按钮
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("搜索图标");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              print("更多");
            },
          ),
        ],
        bottom: TabBar(
          // 其他一些奇奇怪怪的属性这里就先不介绍了
          indicatorColor: Colors.red, // 底部指示器颜色
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black, // 未选中的文字颜色
          indicatorSize: TabBarIndicatorSize.label, // 指示器大小
          controller: _tabController,
          tabs: [
            Tab(text: "首页"),
            Tab(text: "分类"),
            Tab(text: "用户"),
            Tab(text: "设置"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(children: [ListTile(title: Text("我是首页"))]),
          ListView(children: [ListTile(title: Text("我是分类"))]),
          ListView(children: [ListTile(title: Text("我是用户"))]),
          ListView(children: [ListTile(title: Text("我是设置"))]),
        ],
      ),
    );
  }
}
