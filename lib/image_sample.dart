import 'package:flutter/material.dart';

class ImageSampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ImageSampleApp"),
        ),
        body: ImageSamplePage(),
      ),
    );
  }
}

class ImageSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Image.network(
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          fit: BoxFit.cover,
        ),
        SizedBox(
          //可以作为间隔，类似Android中的margin
          height: 10,
        ),
        ClipOval(
          //圆角
          child: Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
            fit: BoxFit.cover,
            width: 120,
            height: 120,
          ),
        )
      ],
    ));
  }
}
