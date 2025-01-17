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
  MyHomePage({super.key}){
    print(listData);
  }

  List<Widget> _initListData(){
    List<Widget> list = [];
    for(var i=0; i<listData.length; i++){
      list.add(
        ListTile(
          leading: Image.network("${listData[i]["imageUrl"]}"),
          title: Text("${listData[i]["title"]}"),
          subtitle: Text("${listData[i]["author"]}"),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
