import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewSamplePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ImageSampleApp"),
        ),
//        body: GridviewSampleHomePage(),
        body: GridviewSampleHomePage2(),
      ),
    );
  }
}

class GridviewSampleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10, //item 设置水平剪间距
      mainAxisSpacing: 10, //item 设置垂直间距
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.yellow),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.purple),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.teal),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.green),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.purple),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.teal),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.purple),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.yellow),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.purple),
        ),
      ],
    );
  }
}

class GridviewSampleHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //设置列数
          crossAxisSpacing: 2, //item 设置水平剪间距
          mainAxisSpacing: 4, //item 设置垂直间距
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "我是 $index 个元素",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          );
        });
  }
}
