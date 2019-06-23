import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDemo extends StatelessWidget {
  const HttpDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
    fetchPost();
    final post = {"title": "hellp", "bind": "BIND"};
    print(post['title']);
    var encode = json.encode(post);
    print(encode);
    var decode = json.decode(encode);
    print(decode['title']);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void fetchPost() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    print('${response.statusCode}');
  }
}
