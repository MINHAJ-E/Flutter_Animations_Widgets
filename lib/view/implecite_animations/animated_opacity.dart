// import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimatedOpacityy extends StatefulWidget {
  const AnimatedOpacityy({super.key});

  @override
  State<AnimatedOpacityy> createState() => _AnimatedOpacityyState();
}

class _AnimatedOpacityyState extends State<AnimatedOpacityy> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("opacity level"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(
                    () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                  );
                },
                child: const Text("press"))
          ],
        ),
      ),
    );
  }
}
