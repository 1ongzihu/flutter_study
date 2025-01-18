import 'package:flutter/material.dart';
import '../../tools/KeepAliveWrapper.dart';

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
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if(_tabController.animation!.value == _tabController.index){
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: TabBar(
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text("关注"),
                ),
                Tab(
                  child: Text("热门"),
                ),
              ]),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        KeepAliveWrapper(
          child: ListView(
            children: [
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注333"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
              ListTile(
                title: Text("这是你的关注"),
              ),
            ],
          ),
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
