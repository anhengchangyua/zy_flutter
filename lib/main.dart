import 'package:flutter/material.dart';
import 'demo/ListViewDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            //为appBar左侧按钮
            icon: Icon(Icons.menu),
            tooltip: 'navigation',
            onPressed: () => debugPrint('sss'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('eee'),
            )
          ],
          title: Text('LT'),
          elevation: 5.0,
        ),
        body: null,
      ),
    );
  }
}
