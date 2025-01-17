import 'package:flutter/material.dart';
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
        primarySwatch: Colors.yellow
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Image.network("https://img1.baidu.com/it/u=2383102008,2259360939&fm=253&app=120&size=w931&n=0&f=JPEG&fmt=auto?sec=1736614800&t=b483cff56e6d8c4230c656e5148203b1"),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("https://img1.baidu.com/it/u=1027671167,4251110738&fm=253&fmt=auto?w=1926&h=800", width: 60, height: 60, fit: BoxFit.cover,),
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        )
      ],
    );
  }
}

