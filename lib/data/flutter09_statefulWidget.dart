import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter!")), // 顶部导航栏
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_num", style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _num++;
                });
              },
              child: Text("增加"),
            ),
          ],
        ),
      ),
      // Scaffold的底部按钮，可以直接在setState方法中更新属性
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _num++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
