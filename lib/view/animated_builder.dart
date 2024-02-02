import 'package:animation/view/animated_container.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderr extends StatefulWidget {
  const AnimatedBuilderr({super.key});

  @override
  State<AnimatedBuilderr> createState() => _AnimatedBuilderrState();
}

class _AnimatedBuilderrState extends State<AnimatedBuilderr>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AnimatedContainerr()));
      }),
    );
  }
}
