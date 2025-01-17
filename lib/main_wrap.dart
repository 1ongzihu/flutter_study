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

    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text("热搜", style: Theme.of(context).textTheme.titleLarge, )
          ],
        ),
        Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Button("女装", onPressed: (){}),
            Button("笔记本", onPressed: (){}),
            Button("玩具", onPressed: (){}),
            Button("文学", onPressed: (){}),
            Button("对联", onPressed: (){}),
            Button("食尚", onPressed: (){}),
            Button("手机", onPressed: (){}),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text("历史记录", style: Theme.of(context).textTheme.titleLarge, )
          ],
        ),
        Divider(),
        Column(
          children: const [
            ListTile(title: Text("女装"),),
            Divider(),
            ListTile(title: Text("手机"),),
            Divider(),
            ListTile(title: Text("蝴蝶刀"),),
            Divider(),
          ],
        ),
        SizedBox(height: 60,),
        OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.delete),label: Text("清空历史记录"),),
          
      ],
    );
  }
}

class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black45,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
