import 'package:flutter/material.dart';
import 'package:flutterhello/gridview_sample.dart';
import 'package:flutterhello/image_sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        InkWell(
          child: ListTile(
            title: Text("Image Sample"),
            subtitle: Text("圆角图片"),
          ),
          onTap: () {
            //打开新页面
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ImageSampleApp()));
          },
        ),
        InkWell(
          child: ListTile(
            title: Text("GridView Sample"),
            subtitle: Text("网格布局"),
          ),
          onTap: () {
            //打开新页面
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new GridviewSamplePage()));
          },
        ),
      ],
    );
  }
}
