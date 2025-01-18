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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            // primaryColor: Colors.blue,
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
            primarySwatch: Colors.yellow),
        home: Tabs()
        );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        backgroundColor: Colors.amber,
        title: Text("Flutter"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.people)),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
          Tab(
            child: Text("关注"),
          ),
          Tab(
            child: Text("热门"),
          ),
          Tab(
            child: Text("视频"),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        ListView(
          children: [
            ListTile(
              title: Text("这是你的关注"),
            )
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("这是热门视频"),
            )
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("这是热门~~~"),
            )
          ],
        ),
      ]),
    );
  }
}
