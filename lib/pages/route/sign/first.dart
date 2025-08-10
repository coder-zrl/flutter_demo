import 'package:flutter/material.dart';

class FirstRoutePage extends StatefulWidget {
  const FirstRoutePage({super.key});

  @override
  State<FirstRoutePage> createState() => _FirstRoutePageState();
}

class _FirstRoutePageState extends State<FirstRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('第二步'),
        ),
      ),
    );
  }
}
