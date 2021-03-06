import 'package:flutter/material.dart';
import 'package:zy_flutter/demo/bloc/bloc_demo.dart';
import 'demo/BottomNavigationBarDemo.dart';
import 'demo/draw_demo.dart';
import 'demo/ListViewDemo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(225, 225, 225, 0.4),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('eee'),
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.screen_lock_portrait)),
                Tab(icon: Icon(Icons.room_service)),
                Tab(icon: Icon(Icons.date_range)),
                Tab(icon: Icon(Icons.dashboard))
              ],
            ),
            title: Text('LT'),
            elevation: 5.0,
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              BlocDemo()
            ],
          ),
          drawer: DrawDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
