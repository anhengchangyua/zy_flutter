import 'package:flutter/material.dart';
import '../model/post.dart';

class ListDetail extends StatelessWidget {
  final Post post;

  ListDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(post.imageUrl, fit: BoxFit.cover),
          ),
          Text(post.title),
          Text(post.author)
        ],
      ),
    );
  }
}
