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
          title: Text('learning ListView'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.search), // 图标 可以是图片
          title: Text('我是一个标题1'), // 标题
          
          subtitle: Text('我是一个二级标题'), // 二级标题
        ),
        ListTile(
          leading: Image.network(
              'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1597650960&t=11cb4ef24bb97c94fe5e6a283c650c90'),
          title: Text('我是一个标题2'),
          subtitle: Text('我是一个二级标题'),
          trailing: Icon(Icons.ac_unit),
        ),
        ListTile(
          title: Text('我是一个标题3'),
          subtitle: Text('我是一个二级标题'),
        ),
        ListTile(
          title: Text('我是一个标题4'),
          subtitle: Text('我是一个二级标题'),
        )
      ],
    );
  }
}
