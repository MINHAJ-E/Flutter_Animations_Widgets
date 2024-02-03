import 'package:flutter/material.dart';

class MuButton extends StatelessWidget {
  final String text;
  final Widget navigation;
  const MuButton({super.key, required this.text, required this.navigation});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => navigation,
          ));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, // Set your desired color here
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
