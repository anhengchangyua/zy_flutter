import 'package:flutter/material.dart';

class MaterialComDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: null,
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
    // shape: BeveledRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(22.0))),
  );

  final Widget _floatingActionButtonExtends = FloatingActionButton.extended(
    onPressed: null,
    label: Text('data'),
    icon: Icon(Icons.touch_app),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComDemo'),
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: _floatingActionButton,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'floatButton', page: FloatButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo())
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatBottonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('FlatButton'),
          onPressed: () => debugPrint('111'),
          splashColor: Colors.grey, //溅墨效果
          textColor: Theme.of(context).accentColor,
        ), //文字按钮
        FlatButton.icon(
          label: Text(
            'FlatButtonIcon',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          icon: Icon(
            Icons.add,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () => debugPrint('111'),
        )
      ],
    );
    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 1.0,
          color: Theme.of(context).accentColor,
          textColor: Theme.of(context).buttonColor,
        ),
        SizedBox(
          width: 16.0,
        ),
        Theme(
          child: RaisedButton(
              child: Text('FlatButton'),
              color: Theme.of(context).accentColor,
              onPressed: () => debugPrint('111'),
              elevation: 1.0),
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
        ), //文字按钮
      ],
    );
    final Widget OutlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('OutlineButton'),
          splashColor: Colors.grey[200], //jianmo效果
          // color: Theme.of(context).accentColor,
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.black,
          onPressed: () => debugPrint('111'),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          borderSide: BorderSide(color: Colors.black),
          splashColor: Colors.grey,
          // color: Theme.of(context).accentColor,
          textColor: Colors.black,
        ),
      ],
    );
    final Widget FixedOutlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          child: OutlineButton(
            child: Text('FixedOutlineButton'),
            splashColor: Colors.grey[200], //jianmo效果
            // color: Theme.of(context).accentColor,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            onPressed: () => debugPrint('111'),
          ),
        )
      ],
    );
    final Widget ExpandButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('FixedOutlineButton'),
            splashColor: Colors.grey[200], //jianmo效果
            // color: Theme.of(context).accentColor,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            onPressed: () => debugPrint('111'),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: OutlineButton(
            child: Text(' Button'),
            splashColor: Colors.grey[200], //jianmo效果
            // color: Theme.of(context).accentColor,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            onPressed: () => debugPrint('111'),
          ),
        ),
      ],
    );
    final Widget ButtonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 34.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('ExpandButton1'),
                splashColor: Colors.grey[200], //jianmo效果
                // color: Theme.of(context).accentColor,
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                onPressed: () => debugPrint('111'),
              ),
              OutlineButton(
                child: Text('ExpandButton2'),
                splashColor: Colors.grey[200], //jianmo效果
                // color: Theme.of(context).accentColor,
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                onPressed: () => debugPrint('111'),
              )
            ],
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                      buttonTheme: ButtonThemeData(
                          padding: EdgeInsets.symmetric(horizontal: 34.0))),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        child: Text('ExpandButton1'),
                        splashColor: Colors.grey[200], //jianmo效果
                        // color: Theme.of(context).accentColor,
                        borderSide: BorderSide(color: Colors.black),
                        textColor: Colors.black,
                        onPressed: () => debugPrint('111'),
                      ),
                      OutlineButton(
                        child: Text('ExpandButton2'),
                        splashColor: Colors.grey[200], //jianmo效果
                        // color: Theme.of(context).accentColor,
                        borderSide: BorderSide(color: Colors.black),
                        textColor: Colors.black,
                        onPressed: () => debugPrint('111'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FloatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatButtonDemo'),
        elevation: 0.0,
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
