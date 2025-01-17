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
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text("这是一个首页")
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.assignment, color: Colors.yellow,),
            title: Text("全部订单"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.green,),
            title: Text("支付"),
          ),

    ],
    );
  }
}

