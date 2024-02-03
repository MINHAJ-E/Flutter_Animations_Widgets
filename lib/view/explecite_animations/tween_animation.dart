// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TweenAnimationnn extends StatefulWidget {
  const TweenAnimationnn({super.key});

  @override
  _TweenAnimationnnState createState() => _TweenAnimationnnState();
}

class _TweenAnimationnnState extends State<TweenAnimationnn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 300.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Example'),
      ),
      body: Center(
        child: FlutterLogo(
          size: _animation.value,
        ),
      ),
    );
  }
}
