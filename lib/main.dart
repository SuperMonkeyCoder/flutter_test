import 'package:flutter/material.dart';
import 'dome/listview_dome.dart';
import 'dome/drawe_dome.dart';
import 'dome/bottom_bottom_nav_dome.dart';
import 'dome/basic_dome.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primaryColor: Colors.yellowAccent,
          highlightColor: Color.fromARGB(0, 0, 144, 2),
          splashColor: Colors.white30),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("nihao"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint('aaaabbbbb'),
            )
          ],
          elevation: 0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
           ListViewDome(),
            BasicDome(),
            Icon(
              Icons.directions_bike,
              size: 128,
              color: Colors.black12,
            )
          ],
        ),
        drawer: DrawerDome(),
        bottomNavigationBar:BottomNavigationBarDome(),
      ),
    );
  }
}
