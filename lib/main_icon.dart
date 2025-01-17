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
        primaryColor: Colors.blue,
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
    return Column(
      children: const [
        SizedBox(height: 20,),
        Icon(Icons.home, size: 40, color: Colors.amber),
        SizedBox(height: 20,),
        Icon(Icons.settings),
        SizedBox(height: 20,),
        Icon(Icons.search),
        SizedBox(height: 20,),
        Icon(Icons.person),
        SizedBox(height: 20,),
        Icon(Icons.category),
        SizedBox(height: 20,),
        Icon(Jiuqifont.gift, size: 30, color: Colors.amber,),
        SizedBox(height: 20,),
        Icon(Jiuqifont.hat, size: 30, color: Colors.red,)
      ],
    );
  }
}

