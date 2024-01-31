import 'package:animation/animated_builder.dart';
import 'package:flutter/material.dart';

class AnimatedAlighnnn extends StatefulWidget {
  const AnimatedAlighnnn({super.key});

  @override
  State<AnimatedAlighnnn> createState() => _AnimatedAlighnnnState();
}

class _AnimatedAlighnnnState extends State<AnimatedAlighnnn>
    with TickerProviderStateMixin {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated align"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.amber,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomCenter,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AnimatedBuilderr()));
      }),
    );
  }
}
