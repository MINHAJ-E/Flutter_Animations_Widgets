// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double containerHeight = 100.0;
  double containerWidth = 100.0;

  void containerSize() {
    setState(() {
      if (containerHeight == 100.0) {
        containerHeight = 200.0;
        containerWidth = 200.0;
      } else {
        containerHeight = 100.0;
        containerWidth = 100.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: containerHeight,
              width: containerWidth,
              color: Colors.blue,
              child: const Center(),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: containerSize,
              child: const Text(' Container Size'),
            ),
          ],
        ),
      ),
    );
  }
}
