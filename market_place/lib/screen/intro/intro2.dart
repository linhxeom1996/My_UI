import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        child: Text(
          "Page 2",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
