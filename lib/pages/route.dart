import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/route/form.dart';
import 'package:flutter_demo/pages/route/news.dart';
import 'package:flutter_demo/pages/route/sign/first.dart';
import 'package:flutter_demo/pages/route/sign/second.dart';
import 'package:flutter_demo/pages/route/sign/third.dart';
import 'package:flutter_demo/pages/route/user.dart';
import './route/search.dart';
import 'package:flutter/cupertino.dart';

// 1.配置路由
Map routes = {
  '/': (context) => MyApp(),
  '/form': (context) => FormPage(),
  '/search': (context) => SearchPage(),
  '/user': (context, {arguments}) => UserRoutePage(arguments: arguments),
  '/first': (context) => FirstRoutePage(),
  '/second': (context) => SecondRoutePage(),
  '/third': (context) => ThirdRoutePage(),
};

// 2.配置 onGenerateRoute
var onGenerateRoute = (RouteSettings settings) {
  // 固定写法
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      // MaterialPageRoute 在安卓是上下切换页面跳转路由，在 ios 是左右切换跳转路由
      // 而 CupertinoPageRoute 可以让安卓和 ios 都实现左右切换路由
      final Route route = CupertinoPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = CupertinoPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 普通路由跳转
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SearchPage();
                  },
                ),
              );
            },
            child: Text("搜索"),
          ),
          Divider(),
          // 普通路由跳转传值
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NewsPage(title: "我是新闻页面标题", newsId: 10);
                  },
                ),
              );
            },
            child: Text("跳转到新闻页面并传值"),
          ),
          Divider(),
          // 命名路由跳转
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/form");
            },
            child: Text("表单"),
          ),
          Divider(),
          // 命名路由跳转传值
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/user", arguments: {"id": 1});
            },
            child: Text("跳转到用户页面并传值"),
          ),
          Divider(),
          // 替换路由
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/first");
            },
            child: Text("测试下替换路由"),
          ),
        ],
      ),
    );
  }
}
