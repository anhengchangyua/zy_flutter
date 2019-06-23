import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //主轴
          crossAxisAlignment: CrossAxisAlignment.center, //交叉轴
          children: <Widget>[ConstrainedDemo()]),
    );
  }
}

class ConstrainedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 100.0, minHeight: 100.0),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0 / 1.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 22.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        width: size + 60,
        height: size + 60,
        child: Icon(
          icon,
          size: size,
          color: Colors.black,
        ));
  }
}
