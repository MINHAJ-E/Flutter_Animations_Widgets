import 'package:animation/view/animated_crossfade.dart';
import 'package:flutter/material.dart';

class AnimatedContainerr extends StatefulWidget {
  const AnimatedContainerr({super.key});

  @override
  State<AnimatedContainerr> createState() => _AnimatedContainerrState();
}

class _AnimatedContainerrState extends State<AnimatedContainerr> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animted container"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.green,
            alignment: selected ? Alignment.center : Alignment.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AnimatedCrossFadeee()));
      }),
    );
  }
}
