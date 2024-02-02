import 'package:animation/view/animated_positioned.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animated size")),
      body: Center(
        child: AnimatedSize(
          // vsync: this, // Pass `this` as the `vsync`
          duration: const Duration(seconds: 3),
          child: SizedBox(
            // width: 100,
            height: double.infinity,
            child: Image.asset("asset/beach.jpg"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AnimatedPositioneddd()));
      }),
    );
  }
}
