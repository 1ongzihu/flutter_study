import 'package:flutter/material.dart';
import 'package:flutter_demo/res/listData.dart';
import './jiuqiFont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          // primaryColor: Colors.blue,
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
          primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 50),
          children: [
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
            ListTile(
              title: Text("这是一个列表"),
            ),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 44,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text(
                "耳机导航",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
