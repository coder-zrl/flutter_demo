import 'package:flutter/material.dart';

import 'first.dart';

class ThirdRoutePage extends StatefulWidget {
  const ThirdRoutePage({super.key});

  @override
  State<ThirdRoutePage> createState() => _ThirdRoutePageState();
}

class _ThirdRoutePageState extends State<ThirdRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 返回到第一步，并设置成跟路由
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return FirstRoutePage();
                },
              ),
              (route) => false,
            );
          },
          child: const Text('返回第一步'),
        ),
      ),
    );
  }
}
