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
      children: [
      Column(children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.red; // 按下时的颜色
                } else if (states.contains(WidgetState.hovered)) {
                  return Colors.blue; // 悬停时的颜色
                } else if (states.contains(WidgetState.disabled)) {
                  return Colors.grey; // 禁用时的颜色
                }
                return Colors.green; // 默认颜色
              },
            ),
          ),
          onPressed: () {},
          child: const Text("这是一个普通按钮"),
        ),
        Divider(),
        ElevatedButton.icon(
          icon: Icon(Icons.send),
          onPressed: () {},
          label: const Text("发送"),
        ),
        Divider(),
        TextButton(
          onPressed: () {},
          child: const Text("这是一个文本按钮"),
        ),
        Divider(),
        OutlinedButton(
          onPressed: () {},
          child: const Text("这是一个边框按钮"),
        ),
        Divider(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.thumb_up),
        ),
        Divider(),
      ])
    ]);
  }
}
