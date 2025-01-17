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
  MyHomePage({super.key});

  List<Widget> _initGridView(){
    var list = listData.map((value){
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26
          )
        ),
        child: Column(
          children: [
            Image.network(value["imageUrl"]),
            SizedBox(height:10),
            Text(value["title"], style: TextStyle(
              fontSize: 18
            ),)
          ],
        ),
      );
    });
    
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      children:  _initGridView()

      );
  }
}
