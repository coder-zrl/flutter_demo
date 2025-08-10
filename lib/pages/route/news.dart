import 'package:flutter/material.dart';

// 新闻页面接受上个页面传过来的参数
class NewsPage extends StatefulWidget {
  final String title;
  final int newsId;
  const NewsPage({super.key, this.title = "新闻", required this.newsId});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    print(widget.newsId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // 获取 NewsPage 定义的 title
      ),
      body: Center(child: Text('新闻页面')),
    );
  }
}
