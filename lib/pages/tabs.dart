import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [HomePage(), SettingPage(), CategoryPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter app"),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(
                    accountName: Text("牛牛"),
                    accountEmail: Text("2154321@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.itying.com/images/flutter/6.png"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/7.png")),
                    )),
              )
            ],
          )
        ],
      )),
      endDrawer: Drawer(
        child: Text("右侧侧边栏"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (v) {
            setState(() {
              _currentIndex = v;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          ]),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 8),
        height: 60,
        width: 60,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
            backgroundColor:
                _currentIndex == 1 ? Colors.blue : Colors.amberAccent,
            shape: CircleBorder(),
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
