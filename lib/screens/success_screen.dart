import 'package:flutter/material.dart';
import 'package:smart_toilet/strings.dart';

class SucccessScreen extends StatelessWidget {
  const SucccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Strings.successTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      )),
    );
  }
}
