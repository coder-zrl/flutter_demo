import 'package:flutter/material.dart';

class SecondRoutePage extends StatefulWidget {
  const SecondRoutePage({super.key});

  @override
  State<SecondRoutePage> createState() => _SecondRoutePageState();
}

class _SecondRoutePageState extends State<SecondRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 替换路由跳转，第三步返回的时候会直接到第一步
            Navigator.of(context).pushReplacementNamed("/third");
          },
          child: const Text('第三步'),
        ),
      ),
    );
  }
}
