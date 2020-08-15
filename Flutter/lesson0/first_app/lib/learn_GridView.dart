import 'package:flutter/material.dart';
import 'listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('learn GridView'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getList() {
    List<Widget> tempList = new List();
    for (var i = 0; i < 20; i++) {
      tempList.add(Container(
        child: Text('我是第$i个数据'),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 一行有多少个列
      crossAxisCount: 3,
      // 左右的距离
      crossAxisSpacing: 10,
      // 主轴的距离
      mainAxisSpacing: 10,
      // 外边距
      padding: EdgeInsets.all(10),
      // 子widget的宽高比例
      childAspectRatio: 1.3,
      children: this._getList(),
    );
  }
}
