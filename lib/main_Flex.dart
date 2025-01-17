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
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                  height: 180,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/7.png",
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(width: 5,),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/6.png",
                            fit: BoxFit.cover,
                          )),
                      SizedBox(height: 5,),
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/5.png",
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}
