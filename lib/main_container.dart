import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好Flutter"),),
      body: Column(
        children: const [
          MyApp(),
          MyButton(),
          MyText()
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
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          width: 100,
          height: 100,
          // transform: Matrix4.translationValues(40, 0, 0),
          transform: Matrix4.rotationZ(0.2),
          decoration: BoxDecoration(
            color: Color.fromARGB(244, 244, 122, 1),
            border: Border.all(
              color: Colors.green,
              width: 2
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.greenAccent,
                blurRadius: 10
              )
            ],
            gradient:const RadialGradient(colors: [
              Colors.red, Colors.yellow
            ])
          ),
          child: const Text("你好，这是一个container", 
          style: TextStyle(
            color: Colors.white
          ),),
        ),
      );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text("这是一个按钮", style: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(0,40,0,0),
      decoration: BoxDecoration(
        color: Colors.yellow
      ),
      child: const Text(
        "这是一个Text这是一个Text这是一个Text这是一个Text这是一个Text这是一个Text", 
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.red,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
          decoration: TextDecoration.underline
        ),
        ),
    );
  }
}