import 'package:flutter/material.dart';

class NavigationDemo extends StatelessWidget {
  handleFloat(context, title) {
    Navigator.pushNamed(context, title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => this.handleFloat(context, '/navi'),
              child: Text('Navigation'),
            ),
            FlatButton(
              onPressed: () => this.handleFloat(context, '/flat'),
              child: Text('Flat'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
