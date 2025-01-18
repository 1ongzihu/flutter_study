import 'package:flutter/material.dart';
import 'package:flutter_demo/res/listData.dart';
import './jiuqiFont.dart';
import './pages/tabs.dart';

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
        home: Tabs()
        );
  }
}



