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
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597038648511&di=8466040758a9073164fb28a11c16d978&imgtype=0&src=http%3A%2F%2Ft7.baidu.com%2Fit%2Fu%3D3616242789%2C1098670747%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D900%26h%3D1350',
            // 显示方式
            alignment: Alignment.topLeft,
            // 控制图片的拉伸和挤压 这些都是根据父容器来的
            fit: BoxFit.cover, // BoxFit.fill 全图显示 图片会被拉伸 并充满父级容器
            // BoxFit.contain: 全图显示，显示原比例，可能会有空隙
            // BoxFit.cover: 显示可能会被拉伸 可能会裁剪 充满（图片要充满整个容器还不能变形）
            // BoxFit.fitWidth 横向充满 可能会变形
            // BoxFit.fitHeight 属相充满 可能会变形

            // 平铺
            // repeat: ImageRepeat.repeatX,
          ),
          height: 300,
          width: 300,
          decoration: BoxDecoration(color: Colors.blue)),
    );
  }
}
