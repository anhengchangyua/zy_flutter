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
    fetchPosts().then((value) => print(value));
    // final post = {"title": "hellp", "bind": "BIND"};
    // print(post['title']);
    // var encode = json.encode(post);
    // print(encode);
    // var decode = json.decode(encode);
    // print(decode['title']);
    // print(decode is Map);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList();
      return posts;
    } else {
      throw Exception('fiald');
    }
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imgUrl;

  Post(this.id, this.title, this.description, this.author, this.imgUrl);

  Post.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imgUrl = json['imageUrl'];

  Map toJson() => {'title': title, 'description': description};
}
