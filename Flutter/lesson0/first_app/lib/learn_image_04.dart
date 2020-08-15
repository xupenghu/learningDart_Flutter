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
          title: Text(
            'learing image wiget',
            style: TextStyle(color: Colors.black),
          ),
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
        // 加载本地图片
        child: Image.asset(
          "images/timg.jpg",
          fit: BoxFit.cover,
        ),
        height: 400,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
  }
}
