// importM
import 'package:flutter/material.dart';
import 'pages/route.dart';

void main() {
  runApp(
    // 所有的Flutter应用都需要MaterialApp包裹
    MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug图标
      theme: ThemeData(primarySwatch: Colors.blue),

      // home: MyApp(), // 如果配置路由，需要删除home属性，使用initialRoute代替

      initialRoute: '/',
      // 命名路由相关配置，路由跳转配置建议使用onGenerateRoute，代码见route.dart文件
      // routes: {
      //   '/': (context) => MyApp(),
      //   '/search': (context) => SearchPage(),
      // },
      onGenerateRoute: onGenerateRoute ,
    ),
  );
}