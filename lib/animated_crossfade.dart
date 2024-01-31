import 'package:animation/animated_default_textstyle.dart';
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
        title: Text("Animated Cross Fade"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: Text("SWITCH")),
          AnimatedCrossFade(
              firstChild: Image.asset("asset/beach.jpg"),
              secondChild: Image.asset("asset/bg.jpg"),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AnimatedDeafultTextStyleee()));
      }),
    );
  }
}
