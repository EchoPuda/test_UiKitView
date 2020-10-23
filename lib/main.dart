import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PageView and UiKitView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
          },
          children: [
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
            _buildView(),
          ],
        ),
      ),
    );
  }

  Widget _buildView() {
    if (!Platform.isIOS) {
      return Container();
    }
    return UiKitView(
      viewType: "plugins/test_for_bug",
      creationParams: <String, dynamic>{
        "message" : "this is a test"
      },
      creationParamsCodec: new StandardMessageCodec(),
    );
  }

}
