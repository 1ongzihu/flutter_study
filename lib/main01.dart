import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("你好Flutter"),),
      body: const Center(
        child: Text("你好Fllluter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.red,
          fontSize: 40
        ),),
      ),
    ),
  ));
}
