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
        title: const Text("Animated align"),
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
              alignment:
                  selected ? Alignment.centerLeft : Alignment.centerRight,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: const Text(
                "HEY",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
