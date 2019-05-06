import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  _BottomNavigationBarDemo createState() => _BottomNavigationBarDemo();
}

class _BottomNavigationBarDemo extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTabHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), title: Text('history')),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('list')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('me'))
          ]),
    );
  }
}
