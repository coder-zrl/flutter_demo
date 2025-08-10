// importM
import 'package:flutter/material.dart';
import 'package:flutter_demo/data/flutter13_appBar_tabBar_tabBarView.dart';

void main() {
  runApp(
    // 所有的Flutter应用都需要MaterialApp包裹
    MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug图标
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyApp()
    ),
  );
}