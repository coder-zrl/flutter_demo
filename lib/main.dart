// importM
import 'package:flutter/material.dart';

import './data/flutter12_drawer.dart';

void main() {
  runApp(
    // 所有的Flutter应用都需要MaterialApp包裹
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Tabs()
    ),
  );
}