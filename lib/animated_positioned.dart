import 'package:animation/animated_alighn.dart';
import 'package:flutter/material.dart';

class AnimatedPositioneddd extends StatefulWidget {
  const AnimatedPositioneddd({Key? key}) : super(key: key);

  @override
  State<AnimatedPositioneddd> createState() => _AnimatedPositionedddState();
}

class _AnimatedPositionedddState extends State<AnimatedPositioneddd>
    with TickerProviderStateMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animated positioned"),
      ),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              width: selected ? 200.0 : 50.0,
              height: selected ? 50.0 : 200.0,
              top: selected ? 50.0 : 150.0,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 2),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected; // Corrected toggle statement
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AnimatedAlighnnn()));
      }),
    );
  }
}
