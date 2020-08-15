import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("learning text"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '我是一个文本', // 文本内容
          textAlign: TextAlign.left, // 文本对齐方式
          maxLines: 1, // 最大行数
          overflow: TextOverflow.ellipsis, // 字体超出后的显示方式
          textScaleFactor: 1.9, // 字体缩放
          // 字体设置样式
          style: TextStyle(
            fontSize: 20.0, // 字体大小
            color: Colors.red, // 字体大小
            fontWeight: FontWeight.bold, // 字体粗细
            fontStyle: FontStyle.italic, // 字体样式 italic斜体 normal 正常体
            decoration: TextDecoration.underline, // 文字装饰线
            decorationColor: Colors.green, // 装饰线颜色
            decorationStyle: TextDecorationStyle.dashed, // 装饰线风格
            letterSpacing: 5.0, // 自间距
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}
