import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('header'),
              decoration: BoxDecoration(color: Colors.yellow),
            ),
            ListTile(
                title: Text('message', textAlign: TextAlign.center),
                onTap: () => Navigator.pop(context),
                trailing: Icon(
                  Icons.message,
                  size: 22.0,
                )),
            ListTile(
                title: Text('fov', textAlign: TextAlign.center),
                onTap: () => Navigator.pop(context),
                trailing: Icon(
                  Icons.message,
                  size: 22.0,
                )),
            ListTile(
                title: Text('eee', textAlign: TextAlign.center),
                onTap: () => Navigator.pop(context),
                trailing: Icon(
                  Icons.message,
                  size: 22.0,
                ))
          ],
        ),
      ),
    );
  }
}
