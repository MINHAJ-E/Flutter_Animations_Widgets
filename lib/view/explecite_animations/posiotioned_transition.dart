// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> curveAnimation;
  late double currentValue;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);

    curveAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut,
    );

    _animationController.addListener(() {
      setState(() {
        currentValue = _animationController.value;
      });
    });

    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Transition"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            PositionedTransition(
              rect: RelativeRectTween(
                begin: const RelativeRect.fromLTRB(0, 0, 0, 700),
                end: const RelativeRect.fromLTRB(0, 700, 0, 0),
              ).animate(curveAnimation),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.book),
        onPressed: () {
          if (_animationController.isAnimating) {
            _animationController.stop();
          } else {
            _animationController.repeat();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
