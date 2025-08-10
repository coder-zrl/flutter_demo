import 'package:flutter/material.dart';

class UserRoutePage extends StatefulWidget {
  final Map arguments;

  UserRoutePage({super.key, required this.arguments});

  @override
  State<UserRoutePage> createState() => _UserRoutePageState();
}

class _UserRoutePageState extends State<UserRoutePage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户详情")),
      body: Center(child: Text("用户详情")),
    );
  }
}
