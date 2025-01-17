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

    List<Widget> _initCardData(){
      var list = listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 10,
          child: Column(
          children: [
            AspectRatio(aspectRatio: 16/9, 
            child: Image.network(value["imageUrl"], fit: BoxFit.cover,),
                        
            ),
            ListTile(
              leading: CircleAvatar(
                // radius: 110,
                backgroundImage: NetworkImage(value["imageUrl"]),
                // child: Image.network("https://www.itying.com/images/flutter/6.png",
                // fit: BoxFit.cover,
                // height: 40,
                // width: 40,
                // ),
              ),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
            )
          ],
        ));
      });
      return list.toList();
    }

    return ListView(
      padding: EdgeInsets.only(top: 50),
      children: _initCardData()
    );
  }
}
