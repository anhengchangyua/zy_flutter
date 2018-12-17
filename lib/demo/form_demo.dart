import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[RegisterDemo()],
          ),
        ),
      ),
    );
  }
}

class RegisterDemo extends StatefulWidget {
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;
  void handleSave() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('$username');
      debugPrint('$password');
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('注册中...'),
      ));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: '用户名', helperText: ''),
            onSaved: (value) {
              username = value;
            },
            autovalidate: autovalidate,
            validator: validateUsername,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: '密码', helperText: ''),
            obscureText: true, //不展示密码
            autovalidate: autovalidate,
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                '注 册',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              color: Colors.blueAccent,
              onPressed: handleSave,
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true, //设置背景
        icon: Icon(Icons.subject),
        labelText: 'dddd',
        hintText: 'hintText',
        // border: InputBorder.none),
      ),
      onChanged: (value) => debugPrint(value),
      onSubmitted: (value) => debugPrint(value),
    );
  }
}
