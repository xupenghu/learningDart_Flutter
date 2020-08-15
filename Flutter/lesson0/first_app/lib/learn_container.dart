import 'package:flutter/material.dart';

/**
 * 每一个flutter应用都是从runApp开始启动的
 * 
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // materialApp作为根组件
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Container 容器组件 类似div
      child: Container(
        child: Text(
          '我是一个文本',
          maxLines: 2,
        ),
        height: 200.0,
        width: 200.0,
        // 背景装饰
        decoration: BoxDecoration(
          color: Colors.yellow, // 背景颜色
          // 边框
          border: Border.all(
              color: Colors.blue, //边框颜色
              width: 2 // 边框宽的 单位px
              ),
          // borderRadius: BorderRadius.all(BorderRadius.circular(2.0))
        ),

        // 对齐方式
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
