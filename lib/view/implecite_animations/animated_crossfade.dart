import 'package:flutter/material.dart';

class AnimatedCrossFadeee extends StatefulWidget {
  const AnimatedCrossFadeee({super.key});

  @override
  State<AnimatedCrossFadeee> createState() => _AnimatedCrossFadeeeState();
}

class _AnimatedCrossFadeeeState extends State<AnimatedCrossFadeee> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text("SWITCH")),
          AnimatedCrossFade(
              firstChild: Image.asset("asset/beach.jpg"),
              secondChild: Image.asset("asset/city.jpg"),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1))
        ],
      ),
    );
  }
}
