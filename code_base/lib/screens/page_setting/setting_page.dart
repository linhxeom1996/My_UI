import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Page 2",
          style: TextStyle(color: Colors.black, fontSize: 54),
        ),
      ),
    );
  }
}
