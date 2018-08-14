import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

void main() {
  //Does not work in my environment, instead go to Command Palette and search for "Toggle Debug Painting"
  //https://www.udemy.com/learn-flutter-dart-to-build-ios-android-apps/learn/v4/questions/4592926
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager(),
      ),
    );
  }
}
