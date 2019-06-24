import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimationDemoHome(),
    );
  }
}

// ignore: must_be_immut11able
class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
//        value: 32.0,
//        lowerBound: 32.0,
//        upperBound: 100.0,
        duration: Duration(milliseconds: 1000),
        vsync: this);

    curve =
        CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor = ColorTween(begin: Colors.red, end: Colors.redAccent)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.addStatusListener((AnimationStatus status) {
      print(status);
    });
//    animationController.forward(); //开始播放动画
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose(); //不用的时候dispose掉
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimationHeart(
          animations: [animation, animationColor],
          controller: animationController),
    );
  }
}

class AnimationHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimationHeart({this.animations, this.controller})
      : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animations[0].value,
        color: animations[1].value,
        onPressed: () {
          switch (controller.status) {
            case AnimationStatus.completed:
              controller.reverse();
              break;
            default:
              controller.forward();
              break;
          }
        });
  }
}
