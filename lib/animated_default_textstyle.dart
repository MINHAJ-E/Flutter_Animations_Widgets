import 'package:animation/animated_icon.dart';
import 'package:flutter/material.dart';

class AnimatedDeafultTextStyleee extends StatefulWidget {
  const AnimatedDeafultTextStyleee({super.key});

  @override
  State<AnimatedDeafultTextStyleee> createState() =>
      _AnimatedDeafultTextStyleeeState();
}

class _AnimatedDeafultTextStyleeeState
    extends State<AnimatedDeafultTextStyleee> {
  bool _first = true;
  double _fontsiz = 60;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated deafult text style widget"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                  fontSize: _fontsiz,
                  color: _color,
                  fontWeight: FontWeight.bold),
              child: Text("FLUTTER "),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _fontsiz = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.green;
                  _first = !_first;
                });
              },
              child: Text("SWITCH"))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AnimatedIconsss()));
      }),
    );
  }
}
