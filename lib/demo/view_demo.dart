import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageViewBuilderDemo();
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _itemBuilderPage(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[Text(posts[index].author)],
          ),
          bottom: 8.0,
          left: 8.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemBuilder: _itemBuilderPage,
      ),
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        onPageChanged: (cureentpage) =>
            debugPrint(cureentpage.toString()), //切换回调
        pageSnapping: true, //是否自动跳转page
        scrollDirection: Axis.vertical,
        controller: PageController(
            initialPage: 0,
            keepPage: false,
            viewportFraction: 0.8), //viewportFraction为占用视图的大小比例 //默认选中
        children: <Widget>[
          Container(
            child: Text(
              "data",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(0.0, 0.0),
            color: Colors.grey,
          ),
          Container(
            child: Text(
              "data4",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(0.0, 0.0),
            color: Colors.grey,
          ),
          Container(
            child: Text(
              "data2",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(0.0, 0.0),
            color: Colors.grey,
          ),
          Container(
            child: Text(
              "data3",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(0.0, 0.0),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
