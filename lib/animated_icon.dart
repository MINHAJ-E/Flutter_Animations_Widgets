import 'package:flutter/material.dart';

class AnimatedIconsss extends StatefulWidget {
  const AnimatedIconsss({super.key});

  @override
  State<AnimatedIconsss> createState() => _AnimatedIconsssState();
}

class _AnimatedIconsssState extends State<AnimatedIconsss>
    with TickerProviderStateMixin {
  bool isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
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
        title: Text("Animated icon"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlay == false) {
              _controller.forward();
              isPlay = true;
            } else {
              _controller.reverse();
              isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
