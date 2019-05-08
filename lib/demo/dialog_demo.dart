import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  DialogDemo({Key key}) : super(key: key);

  _DialogDemoState createState() => _DialogDemoState();
}

enum options { A, B, C }

class _DialogDemoState extends State<DialogDemo> {
  _openSimpleDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('simpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('dataA'),
                onPressed: () {
                  Navigator.pop(context, options.A);
                },
              ),
              SimpleDialogOption(
                child: Text('dataB'),
                onPressed: () {
                  Navigator.pop(context, options.B);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pool),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
