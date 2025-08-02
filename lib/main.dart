// importM
import 'package:flutter/material.dart';

import 'date/flutter02.dart';

void main() {
  runApp(
    // 所有的Flutter应用都需要MaterialApp包裹
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Hello Flutter!")), // 顶部导航栏
        body: const MyApp(),
      ),
    ),
  );
}