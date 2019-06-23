import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topCenter,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
              fit: BoxFit.cover, //覆盖整个屏幕
              image: NetworkImage(
                  'https://resources.ninghao.org/images/candy-shop.jpg'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //container中的部件居中
        children: <Widget>[
          Container(
            //container 甚至颜色 padding 等
            child: Icon(
              Icons.pool,
              color: Colors.white,
              size: 32.0,
            ),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                //使用decoration设置border的颜色
                color: Colors.white,
                border: //边框
                    Border.all(color: Colors.black, style: BorderStyle.solid),
                // borderRadius: BorderRadius.circular(5.0),
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(12.0, 12.0),
                //     color: Colors.yellow,
                //     spreadRadius: -12.0, //shadow的扩散成都
                //     blurRadius: 12.0,
                //   ),
                // ],
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(122, 33, 44, 1),
                  Color.fromRGBO(44, 55, 66, 1)
                ])),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          child: RichText(
        text: TextSpan(
            text: '人生真的很难,但希望还是在的 ！',
            style: TextStyle(fontSize: 22.0, color: Colors.black45),
            children: [
              TextSpan(text: '是的！', style: TextStyle(color: Colors.deepOrange))
            ]),
      )),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 22.0);
  final String _name = 'zzzz';
  final String _title = '我们';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$_name 人生真的很难，$_title一起努力吧！,$_name 人生真的很难，$_title一起努力吧！,$_name 人生真的很难，$_title一起努力吧！,$_name 人生真的很难，$_title一起努力吧！',
        textAlign: TextAlign.left,
        style: _textStyle, //text 的样式
        maxLines: 3, //最多三行
        overflow: TextOverflow.ellipsis, //省略号
      ),
    );
  }
}
