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
          title: Text('learn GridView2'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget _getListData(content, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 自带遍历效果
    return GridView.builder(
      // 必选参数 必须要做样式适配
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // 一行有多少个列
        crossAxisCount: 1,
        // 左右的距离
        crossAxisSpacing: 10,
        // 主轴的距离
        mainAxisSpacing: 10,
        // 子widget的宽高比例
        // childAspectRatio: 1.3,
      ),
      // 遍历个数
      itemCount: listData.length,
      // 遍历方法
      itemBuilder: this._getListData,
    );
  }
}
