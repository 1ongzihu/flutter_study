import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好Flutter"),),
      body: Column(
        children: const [
          MyApp(),
          SizedBox(height: 20),
          Circular(),
          SizedBox(height: 20),
          ClipImage(),
          SizedBox(height: 20),
          LocalImage()

        ],
      )
    ),
  ));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.amber
        ),
        child: Image.network(
          "https://cdn.beekka.com/blogimg/asset/202407/bg2024072313.webp",
          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeatY,
          ),
      ),
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75),
        image: const DecorationImage(
          image: NetworkImage("https://cdn.beekka.com/blogimg/asset/202407/bg2024072312.webp"),
          fit: BoxFit.cover
        )
      ),
      // child: Image.network(),
    );
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://cdn.beekka.com/blogimg/asset/202311/bg2023110902.webp",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
        ),
    );
  }
}

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Image.asset(
        "images/a.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}


