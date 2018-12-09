import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // title: Text('zt site'),
              backgroundColor: Colors.lightBlue,
              // pinned: true, //固定bar
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'zt site',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              expandedHeight: 178.0,
            ),
            SliverSafeArea(
                sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ))
            // SliverPadding(
            //   padding: EdgeInsets.all(8.0),
            //   sliver: SliverGridDemo(),
            // )
          ],
        ),
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, index) {
      return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(12.0)), //不生效？
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    left: 10.0,
                    child: Column(
                      children: <Widget>[Text(posts[index].author)],
                    ),
                  )
                ],
              )));
    }, childCount: posts.length));
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          delegate: SliverChildBuilderDelegate((BuildContext context, index) {
            return Container(
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            );
          }, childCount: posts.length)),
    );
  }
}
